package akademik;

import java.io.*;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;

public class Mesin {

    private final String pemasaran = "Rule Konversi.xlsx";
    private String nim;

    public void inputExcelKeSQL(String pathFile) {
        try {
            System.out.println("===== Mulai input excel khs ke sql =====");
            Sheet s = null;
            Koneksi k = new Koneksi();
            File file = new File(pathFile);
            try (FileInputStream input = new FileInputStream(file)) {
                System.out.println("Path File: " + file);
                try {
                    Workbook wb = WorkbookFactory.create(input);
                    s = wb.getSheetAt(0);
                } catch (IOException | EncryptedDocumentException e) {
                }
                Row row;
                Row nimrow = s.getRow(0);
                Row namarow = s.getRow(1);
                Row ipkrow = s.getRow(s.getLastRowNum() - 1);
                nim = nimrow.getCell(1).getStringCellValue().replace(": ", "");
                String nama = ((namarow.getCell(1).getStringCellValue()).replace(": ", "")).replace("'", "`");
                double ipk = ipkrow.getCell(3).getNumericCellValue();
                int startFrom = 5;
                String sqlmahasiswa = "INSERT INTO MAHASISWA VALUES('" + nim + "','" + nama + "','" + ipk + "')";
                k.eksekusi(sqlmahasiswa);
                for (int i = startFrom - 1; i <= s.getLastRowNum() - 7; i++) {
                    row = s.getRow(i);

                    int kode_mk = (int) row.getCell(1).getNumericCellValue();
                    String nama_mk = (row.getCell(2).getStringCellValue()).replace("'", "`");
                    int sks = (int) row.getCell(3).getNumericCellValue();
                    double nilai_angka = row.getCell(4).getNumericCellValue();
                    String nilai_huruf = row.getCell(5).getStringCellValue();
                    double sks_nilai_angka = row.getCell(6).getNumericCellValue();

                    String sql = "INSERT INTO KHS VALUES('" + nim + "','" + kode_mk + "','" + nama_mk + "','" + sks + "','" + nilai_angka + "','" + nilai_huruf + "','" + sks_nilai_angka + "')";
                    k.eksekusi(sql);
                    System.out.println("Import row: " + kode_mk);
                }
                k.tutup();
            }
            System.out.println("Berhasil impor excel khs ke tabel sql");
            System.out.println("===== Selesai input excel ke sql =====");
        } catch (IOException | ClassNotFoundException | SQLException e) {
        }
    }

    public void inputPemasaranKeSQL() {
        try {
            System.out.println("===== Mulai input excel pemasaran ke sql =====");
            Sheet s = null;
            Koneksi k = new Koneksi();
            File file = new File(pemasaran);
            FileInputStream input = null;
            try {
                input = new FileInputStream(file);
            } catch (FileNotFoundException ex) {
                Logger.getLogger(Mesin.class.getName()).log(Level.SEVERE, null, ex);
            }
            System.out.println("Path File: " + file);
            try {
                Workbook wb = WorkbookFactory.create(input);
                s = wb.getSheetAt(0);
            } catch (IOException | EncryptedDocumentException e) {
            }
            Row row;
            int startFrom = 1;
            for (int i = startFrom - 1; i <= s.getLastRowNum(); i++) {
                row = s.getRow(i);
                int no = (int) row.getCell(0).getNumericCellValue();
                int kode_mk = (int) row.getCell(1).getNumericCellValue();
                String nama_mk = (getCellValueAsString(row.getCell(2))).replace("'", "`");
                int sks = (int) row.getCell(3).getNumericCellValue();
                int kode_mk_alias = (int) row.getCell(4).getNumericCellValue();
                String nama_mk_alias = (getCellValueAsString(row.getCell(5))).replace("'", "`");
                int sks_alias = (int) row.getCell(6).getNumericCellValue();

                String sql = "INSERT INTO PEMASARAN VALUES('" + no + "','" + kode_mk
                        + "','" + nama_mk + "','" + sks + "','" + kode_mk_alias
                        + "','" + nama_mk_alias + "','" + sks_alias + "')";
                k.eksekusi(sql);
                System.out.println("Import row: " + no);
            }

            k.tutup();
            try {
                input.close();
            } catch (IOException ex) {
                Logger.getLogger(Mesin.class.getName()).log(Level.SEVERE, null, ex);
            }
            System.out.println("Berhasil impor excel pemasaran ke tabel sql");
            System.out.println("===== Selesai input excel pemasaran ke sql =====");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Mesin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void eksekusi() {
        try {
            Koneksi k = new Koneksi();
            String lulus = "INSERT INTO konversi SELECT k.nim_mhs,"
                    + " p.kode_mk_alias, p.nama_mk_alias, p.sks_alias,"
                    + " k.nilai_angka, k.nilai_huruf, k.sks_nilai_angka from khs"
                    + " k JOIN pemasaran p ON k.kode_mk = p.kode_mk WHERE"
                    + " k.nilai_angka < '2.0' GROUP BY p.kode_mk_alias";
            k.eksekusi(lulus);
            String hapusPemasaran = "DELETE p from pemasaran p join (SELECT kode_mk_alias FROM"
                    + " pemasaran p2 WHERE kode_mk IN (SELECT kode_mk FROM khs)) pp"
                    + " on p.kode_mk_alias = pp.kode_mk_alias";
            k.eksekusi(hapusPemasaran);
            String eksekusi = "INSERT INTO konversi SELECT m.nim_mhs,"
                    + " p.kode_mk_alias, p.nama_mk_alias, p.sks_alias,"
                    + " null as nilai_angka, null as nilai_huruf,"
                    + " null as sks_nilai_angka FROM pemasaran p JOIN mahasiswa m"
                    + " GROUP by p.kode_mk_alias";
            k.eksekusi(eksekusi);
            k.tutup();
            System.out.println("Berhasil konversi mata kuliah belum lulus");
        } catch (ClassNotFoundException | SQLException e) {
        }
    }

    public void clearAll() {
        try {
            Koneksi k = new Koneksi();
            String tabelKhs = "DELETE FROM khs";
            String tabelKonversi = "DELETE FROM konversi";
            String tabelMahasiswa = "DELETE FROM mahasiswa";
            String tabelPemasaran = "DELETE FROM pemasaran";
            k.eksekusi(tabelKhs);
            k.eksekusi(tabelKonversi);
            k.eksekusi(tabelMahasiswa);
            k.eksekusi(tabelPemasaran);
            k.tutup();
        } catch (ClassNotFoundException | SQLException e) {
        }
    }

    public void exportSQLkeXLSX(String pathFolder) {
        try {
            Workbook wb = new HSSFWorkbook();
            Koneksi k = new Koneksi();
            Date date = new Date();
            SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd HHmmss");
            Sheet s = wb.createSheet("Konversi KHS");

            Row n = s.createRow(0);
            Cell nimHeader = n.createCell(0);
            nimHeader.setCellValue("NIM");
            Cell nimCell = n.createCell(1);

            Row nm = s.createRow(1);
            Cell namaHeader = nm.createCell(0);
            namaHeader.setCellValue("Nama Mahasiswa");
            Cell namaCell = nm.createCell(1);

            Row r = s.createRow(3);
            Cell noHeader = r.createCell(0);
            noHeader.setCellValue("No");
            Cell kodeHeader = r.createCell(1);
            kodeHeader.setCellValue("Kode");
            Cell matkulHeader = r.createCell(2);
            matkulHeader.setCellValue("Nama Mata Kuliah");
            Cell sksHeader = r.createCell(3);
            sksHeader.setCellValue("SKS");
            Cell nilaiHeader = r.createCell(4);
            nilaiHeader.setCellValue("Nilai Angka");
            Cell hurufHeader = r.createCell(5);
            hurufHeader.setCellValue("Nilai Huruf");
            Cell sksnilaiHeader = r.createCell(6);
            sksnilaiHeader.setCellValue("SKS x Nilai Angka");

            String sqlkonversi = "SELECT * FROM konversi";
            k.select(sqlkonversi);
            int row = 4;
            while (k.tampilData()) {
                int kodemk = k.rs().getInt("kode_mk");
                String namamk = k.rs().getString("nama_mk");
                int sks = k.rs().getInt("sks");
                Double nilaiangka = k.rs().getDouble("nilai_angka");
                String nilaihuruf = k.rs().getString("nilai_huruf");
                Double sksnilaiangka = k.rs().getDouble("sks_nilai_angka");

                Row dataRow = s.createRow(row);

                Cell dataNoCell = dataRow.createCell(0);
                dataNoCell.setCellValue(row - 3);

                Cell dataKodeMkCell = dataRow.createCell(1);
                dataKodeMkCell.setCellValue(kodemk);

                Cell dataNamaMkCell = dataRow.createCell(2);
                dataNamaMkCell.setCellValue(namamk);

                Cell dataSksCell = dataRow.createCell(3);
                dataSksCell.setCellValue(sks);

                Cell dataNilaiAngkaCell = dataRow.createCell(4);
                dataNilaiAngkaCell.setCellValue(nilaiangka);

                Cell dataNilaiHurufCell = dataRow.createCell(5);
                dataNilaiHurufCell.setCellValue(nilaihuruf);

                Cell dataSksNilaiAngkaCell = dataRow.createCell(6);
                dataSksNilaiAngkaCell.setCellValue(sksnilaiangka);

                row++;
            }

            Row t = s.createRow(row);
            Cell skstotal = t.createCell(3);
            Cell sksnilaitotal = t.createCell(6);
            String sqltotalsks = "SELECT SUM(sks) total FROM konversi";
            String sqltotalsksnilai = "SELECT SUM(sks_nilai_angka) total FROM konversi";
            k.select(sqltotalsks);
            while (k.tampilData()) {
                int skst = k.rs().getInt("total");
                skstotal.setCellValue(skst);
                row++;
            }
            k.select(sqltotalsksnilai);
            while (k.tampilData()) {
                int sksta = k.rs().getInt("total");
                sksnilaitotal.setCellValue(sksta);
                row++;
            }

            Row i = s.createRow(row);
            Cell ipkHeader = i.createCell(0);
            ipkHeader.setCellValue("IPK (Indeks Prestasi Kumulatif) =");
            Cell ipkCell = i.createCell(3);

            Row last = s.createRow(row + 1);
            Cell lastHeader = last.createCell(0);
            lastHeader.setCellValue("(SKS x Nilai Angka) / Jumlah SKS");

            String sqlmahasiswa = "SELECT * FROM mahasiswa";
            k.select(sqlmahasiswa);
            while (k.tampilData()) {
                nim = k.rs().getString("nim_mhs");
                nimCell.setCellValue(": " + nim);
                String nama = k.rs().getString("nama");
                namaCell.setCellValue(": " + nama);
                Double ipk = k.rs().getDouble("ipk");
                ipkCell.setCellValue(ipk);
            }

            String outputDirPath = pathFolder+"\\"+ nim + " " + f.format(date) + ".xls";
            try (FileOutputStream fileOut = new FileOutputStream(outputDirPath)) {
                wb.write(fileOut);
            } catch (FileNotFoundException ex) {
                Logger.getLogger(Mesin.class.getName()).log(Level.SEVERE, null, ex);
            } catch (IOException ex) {
                Logger.getLogger(Mesin.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Mesin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private String getCellValueAsString(Cell cell) {
        String strCellValue = null;
        if (cell != null) {
            switch (cell.getCellType()) {
                case STRING:
                    strCellValue = cell.toString();
                    break;
                case NUMERIC:
                    Double value = cell.getNumericCellValue();
                    Long longvalue = value.longValue();
                    strCellValue = longvalue.toString();
                    break;
                case BOOLEAN:
                    strCellValue = new String(new Boolean(cell.getBooleanCellValue()).toString());
                    break;
                case BLANK:
                    strCellValue = "";
                    break;
            }
        }
        return strCellValue;
    }
}
