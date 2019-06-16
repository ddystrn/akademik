package akademik;

import java.io.*;
import java.net.*;
import java.nio.file.*;
import java.sql.SQLException;
import java.text.*;
import java.util.*;
import javax.swing.JOptionPane;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;

public class Mesin {

    private final String pemasaran = "Rule Konversi.xlsx";
    private final String pemasaran1 = "mkpilihan1.txt";
    private final String pemasaran2 = "mkpilihan2.txt";
    private final String online = "https://github.com/ddystrn/akademik/raw/master/Rule%20Konversi.xlsx";
    private final String online1 = "https://raw.githubusercontent.com/ddystrn/akademik/master/mkpilihan1.txt";
    private final String online2 = "https://raw.githubusercontent.com/ddystrn/akademik/master/mkpilihan2.txt";
    private String nim;
    private String pathFile;
    private String pathFolder;
    NumberFormat nf = NumberFormat.getInstance();

    //awal proses konversi
    public void jalankanMethod() {
        clearAll();
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
            inputExcelKeSQL();
        } catch (ClassNotFoundException | SQLException ex) {
            popup(ex.getMessage());
        }
    }

    public void inputExcelKeSQL() {
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
                    popup(e.getMessage());
                }
                Row row;
                Row kosong;
                Row nimrow = s.getRow(0);
                Row namarow = s.getRow(1);

                String nama = null;
                double ipk = 0;
                int last = -1;
                int startFrom = 5;

                System.out.println("Last Row: " + (s.getLastRowNum() + 1));
                for (int i = 0; i <= s.getLastRowNum(); i++) {
                    kosong = s.getRow(i);
                    if (kosong == null || kosong.getCell(1)==null || getCellValueAsString(kosong.getCell(1)).isEmpty()) {
                        last++;
                    }
                }
                Row ipkrow = s.getRow((s.getLastRowNum()-last)+2);
                try {
                    nim = nimrow.getCell(1).getStringCellValue().replace(": ", "");
                    nama = ((namarow.getCell(1).getStringCellValue()).replace(": ", "")).replace("'", "`");
                    ipk = nf.parse(getCellValueAsString(ipkrow.getCell(3))).doubleValue();
                } catch (Exception e) {
                    popup(e.getMessage());
                }

                String sqlmahasiswa = "INSERT INTO MAHASISWA VALUES('" + nim + "','" + nama + "','" + ipk + "')";
                k.eksekusi(sqlmahasiswa);

                for (int i = startFrom - 1; i <= s.getLastRowNum() - last; i++) {
                    row = s.getRow(i);

                    int kode_mk = (int) row.getCell(1).getNumericCellValue();
                    String nama_mk = (row.getCell(2).getStringCellValue()).replace("'", "`");
                    int sks = (int) row.getCell(3).getNumericCellValue();
                    double nilai_angka = nf.parse(getCellValueAsString(row.getCell(4))).doubleValue();
                    String nilai_huruf = row.getCell(5).getStringCellValue();
                    double sks_nilai_angka = nf.parse(getCellValueAsString(row.getCell(6))).doubleValue();

                    String sql = "INSERT INTO KHS VALUES('" + nim + "','"
                            + kode_mk + "','" + nama_mk + "','" + sks + "','"
                            + nilai_angka + "','" + nilai_huruf + "','"
                            + sks_nilai_angka + "')";
                    k.eksekusi(sql);
                    System.out.println("Import row: " + kode_mk);
                }
                k.tutup();
            } catch (ParseException ex) {
                popup(ex.getMessage());
            }
            System.out.println("Berhasil impor excel khs ke tabel sql");
            System.out.println("===== Selesai input excel ke sql =====");
            inputPemasaranKeSQL();
        } catch (IOException | ClassNotFoundException | SQLException e) {
            popup(e.getMessage());
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
                popup(ex.getMessage());
            }
            System.out.println("Path File: " + file);
            try {
                Workbook wb = WorkbookFactory.create(input);
                s = wb.getSheetAt(0);
            } catch (IOException | EncryptedDocumentException e) {
                popup(e.getMessage());
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
                popup(ex.getMessage());
            }
            System.out.println("Berhasil impor excel pemasaran ke tabel sql");
            System.out.println("===== Selesai input excel pemasaran ke sql =====");
            eksekusi();
        } catch (ClassNotFoundException | SQLException ex) {
            popup(ex.getMessage());
        }
    }

    public void eksekusi() {
        try {
            Koneksi k = new Koneksi();
            String hapusKodeMkAlias0Khs = "DELETE k FROM khs k JOIN pemasaran p on"
                    + " k.kode_mk = p.kode_mk WHERE p.kode_mk_alias='0'";
            k.eksekusi(hapusKodeMkAlias0Khs);
            String lulus = "INSERT INTO konversi SELECT * FROM (SELECT"
                    + " k.nim_mhs, p.kode_mk_alias, p.nama_mk_alias,"
                    + " p.sks_alias, max(k.nilai_angka) as nilai_angka,"
                    + " min(k.nilai_huruf) as nilai_huruf, k.sks_nilai_angka"
                    + " from khs k JOIN pemasaran p ON k.kode_mk = p.kode_mk"
                    + " GROUP BY p.kode_mk_alias) AS tabel WHERE nilai_angka < '2.0'";
            k.eksekusi(lulus);
            String hapusPemasaran = "DELETE p from pemasaran p join (SELECT kode_mk_alias FROM"
                    + " pemasaran p2 WHERE kode_mk IN (SELECT kode_mk FROM khs)) pp"
                    + " on p.kode_mk_alias = pp.kode_mk_alias";
            k.eksekusi(hapusPemasaran);
            String hapusKodeMkAlias0Pemasaran="DELETE FROM pemasaran WHERE"
                    + " kode_mk_alias='0'";
            k.eksekusi(hapusKodeMkAlias0Pemasaran);
            k.tutup();
            System.out.println("Berhasil konversi mata kuliah belum lulus");
            mataKuliahPilihan();
        } catch (ClassNotFoundException | SQLException e) {
            popup(e.getMessage());
        }
    }

    public void mataKuliahPilihan() {
        try {
            Koneksi k = new Koneksi();
            String[] khs = null;
            BufferedReader mkPilihan = null;
            for (int p = 1; p <= 2; p++) {
                try {
                    mkPilihan = new BufferedReader(new FileReader("mkpilihan" + p + ".txt"));
                    String str;
                    List<String> l = new ArrayList<String>();
                    while ((str = mkPilihan.readLine()) != null) {
                        l.add(str);
                    }
                    String[] pemasaran = l.toArray(new String[0]);
                    List<String> m = new ArrayList<String>();
                    System.out.println("Kode MK Pilihan " + p + " Pemasaran:");
                    for (int i = 0; i < pemasaran.length; i++) {
                        String sql = "SELECT kode_mk_alias from pemasaran where kode_mk_alias='" + pemasaran[i] + "' group by kode_mk_alias";
                        k.select(sql);
                        while (k.tampilData()) {
                            m.add(k.rs().getString("kode_mk_alias"));
                        }
                        System.out.println(pemasaran[i]);
                    }
                    khs = m.toArray(new String[0]);
                    System.out.println("Kode MK Pilihan " + p + " KHS:");
                    for (int i = 0; i < khs.length; i++) {
                        System.out.println(khs[i]);
                    }
                    if (Arrays.equals(pemasaran, khs)) {
                        System.out.println("Sama");
                    } else {
                        System.out.println("Tidak sama");
                        for (int i = 0; i < khs.length; i++) {
                            String sql = "DELETE FROM pemasaran WHERE kode_mk_alias='" + khs[i] + "'";
                            k.eksekusi(sql);
                        }
                    }
                } catch (FileNotFoundException ex) {
                    popup(ex.getMessage());
                } catch (IOException ex) {
                    popup(ex.getMessage());
                } finally {
                    try {
                        mkPilihan.close();
                    } catch (IOException ex) {
                        popup(ex.getMessage());
                    }
                }
            }
            k.tutup();
            konversi();
        } catch (ClassNotFoundException | SQLException ex) {
            popup(ex.getMessage());
        }
    }

    public void konversi() {
        try {
            Koneksi k = new Koneksi();
            String eksekusi = "INSERT INTO konversi SELECT m.nim_mhs,"
                    + " p.kode_mk_alias, p.nama_mk_alias, p.sks_alias,"
                    + " null as nilai_angka, null as nilai_huruf,"
                    + " null as sks_nilai_angka FROM pemasaran p JOIN mahasiswa m"
                    + " GROUP by p.kode_mk_alias";
            k.eksekusi(eksekusi);
            k.tutup();
            exportSQLkeXLSX();
        } catch (ClassNotFoundException | SQLException ex) {
            popup(ex.getMessage());
        }
    }

    public void exportSQLkeXLSX() {
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

            String outputDirPath = pathFolder + "\\" + nim + " " + f.format(date) + ".xls";
            try (FileOutputStream fileOut = new FileOutputStream(outputDirPath)) {
                wb.write(fileOut);
            } catch (FileNotFoundException ex) {
                popup(ex.getMessage());
            } catch (IOException ex) {
                popup(ex.getMessage());
            }
            popup("Konversi berhasil! Silakan cek di direktori yang sama dengan file asal.");
        } catch (ClassNotFoundException | SQLException ex) {
            popup(ex.getMessage());
        }
    }
    //batas proses konversi
    
    public void checkUpdate() {
        try {
            File p = new File(pemasaran);
            File p1 = new File(pemasaran1);
            File p2 = new File(pemasaran2);
            URL o = new URL(online);
            URL o1 = new URL(online1);
            URL o2 = new URL(online2);
            if ((p.length() == getFileSize(o)) && (p1.length() == getFileSize(o1)) && (p2.length() == getFileSize(o2))) {
                popup("Tidak ada update.");
            } else {
                try {
                    InputStream in = new URL(online).openStream();
                    Files.copy(in, Paths.get(pemasaran), StandardCopyOption.REPLACE_EXISTING);
                    InputStream in1 = new URL(online1).openStream();
                    Files.copy(in1, Paths.get(pemasaran1), StandardCopyOption.REPLACE_EXISTING);
                    InputStream in2 = new URL(online2).openStream();
                    Files.copy(in2, Paths.get(pemasaran2), StandardCopyOption.REPLACE_EXISTING);
                    popup("Berhasil update database.");
                } catch (IOException e) {
                }
            }
        } catch (MalformedURLException ex) {
            popup(ex.getLocalizedMessage());
        }
    }

    public void popup(String message) {
        JOptionPane.showMessageDialog(null, message);
    }

    public void setPathFile(String pathFile) {
        this.pathFile = pathFile;
    }

    public void setPathFolder(String pathFolder) {
        this.pathFolder = pathFolder;
    }

    private int getFileSize(URL url) {
        URLConnection con = null;
        try {
            con = url.openConnection();
            if (con instanceof HttpURLConnection) {
                ((HttpURLConnection) con).setRequestMethod("HEAD");
            }
            con.getInputStream();
            return con.getContentLength();
        } catch (IOException e) {
            popup("Tidak ada koneksi internet.");
        } finally {
            if (con instanceof HttpURLConnection) {
                ((HttpURLConnection) con).disconnect();
            }
        }
        return 0;
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
                    strCellValue = value.toString();
                    break;
                case BOOLEAN:
                    strCellValue = Boolean.toString(cell.getBooleanCellValue());
                    break;
                case BLANK:
                    strCellValue = "";
                    break;
            }
        }
        return strCellValue;
    }
}
