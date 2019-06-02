package akademik;

import java.io.*;
import java.sql.SQLException;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.ss.usermodel.*;

public class Mesin {

    private final String pemasaran = "Rule Konversi.xlsx";
    private int nim;

    public void inputExcelKeSQL(String pathFile) throws ClassNotFoundException, SQLException, FileNotFoundException, EncryptedDocumentException, IOException {
        System.out.println("===== Mulai input excel khs ke sql =====");
        Sheet s = null;
        Koneksi k = new Koneksi();
        File file = new File(pathFile);
        FileInputStream input = new FileInputStream(file);
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

        nim = Integer.parseInt(nimrow.getCell(1).getStringCellValue().replace(": ", ""));
        String nama = ((namarow.getCell(1).getStringCellValue()).replace(": ", "")).replace("'", "`");
        double ipk = ipkrow.getCell(3).getNumericCellValue();

        int startFrom = 5;
        String sqlmahasiswa = "INSERT INTO MAHASISWA VALUES('"+nim+"','"+nama+"','"+ipk+"')";
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
        input.close();
        System.out.println("Berhasil impor excel khs ke tabel sql");
        System.out.println("===== Selesai input excel ke sql =====");
    }

    public void inputPemasaranKeSQL() throws ClassNotFoundException, SQLException, FileNotFoundException, IOException {
        String pemasaran = "Rule Konversi.xlsx";
        System.out.println("===== Mulai input excel pemasaran ke sql =====");
        Sheet s = null;
        Koneksi k = new Koneksi();
        File file = new File(pemasaran);
        FileInputStream input = new FileInputStream(file);
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

            String sql = "INSERT INTO PEMASARAN VALUES('" + no + "','" + kode_mk + "','" + nama_mk + "','" + sks + "','" + kode_mk_alias + "','" + nama_mk_alias + "','" + sks_alias + "')";
            k.eksekusi(sql);
            String sqlmatkul = "INSERT INTO MATKUL VALUES('" + no + "','"+nim+"','"+kode_mk+"','"+kode_mk_alias+"')";
            k.eksekusi(sqlmatkul);
            System.out.println("Import row: " + no);
        }

        k.tutup();
        input.close();
        System.out.println("Berhasil impor excel pemasaran ke tabel sql");
        System.out.println("===== Selesai input excel pemasaran ke sql =====");
    }

    public void MatKul() throws ClassNotFoundException, SQLException {
        Koneksi k = new Koneksi();
        String sql = "insert into konversi (nim_mhs, nama, kode_mk, nama_mk, sks, nilai_angka, nilai_huruf, sks_nilai_angka, ipk) SELECT nim_mhs, nama, kode_mk, nama_mk, sks, nilai_angka, nilai_huruf, sks_nilai_angka, ipk from khs where nilai_angka < 2.0";
        k.eksekusi(sql);
        k.tutup();
        System.out.println("Berhasil konversi mata kuliah belum lulus");
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
