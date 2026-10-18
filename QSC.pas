program Quiz;

uses crt;

var
  pilihan, skorTerakhir, skorTertinggi, benar, i, kunci: shortint;
  jawaban: char;
  Pernah_Main: boolean;

begin clrscr;

  pilihan := 0;
  skorTerakhir := 0;
  skorTertinggi := 0;
  Pernah_Main := false;

  repeat
    TextColor(lightCyan);
    writeln('==============================');
    writeln('   QUIZ SCIENCE COMPUTER');
    writeln('==============================');
    TextColor(white);
    writeln('1. Mulai Kuis');
    writeln('2. Lihat Petunjuk');
    writeln('3. Lihat Skor dan Rekor');
    writeln('4. Keluar');
    write('Masukkan pilihan: ');
    readln(pilihan);

    case pilihan of

      1: begin
        benar := 0;

        writeln;
        TextColor(lightCyan);
        writeln('========= MULAI KUIS =========');
        TextColor(green);
        writeln('Pilih jawaban A, B, C, atau D.');
        writeln('Masukkan 0 jika ingin berhenti');
        TextColor(white);
        writeln;

        for i := 1 to 5 do
        begin

          case i of
            1: begin
              writeln('1. Apa fungsi utama CPU?');
              writeln('A. Menampilkan gambar');
              writeln('B. Memproses instruksi');
              writeln('C. Mencetak dokumen');
              writeln('D. Menyimpan listrik');
              kunci := 2;
            end;

            2: begin
              writeln('2. Manakah yang termasuk sistem operasi?');
              writeln('A. Microsoft Word');
              writeln('B. Google Chrome');
              writeln('C. Windows');
              writeln('D. Microsoft Excel');
              kunci := 3;
            end;

            3: begin
              writeln('3. Perangkat input adalah...');
              writeln('A. Keyboard');
              writeln('B. Monitor');
              writeln('C. Speaker');
              writeln('D. Printer');
              kunci := 1;
            end;

            4: begin
              writeln('4. Perangkat untuk menampilkan gambar adalah...');
              writeln('A. Mouse');
              writeln('B. Monitor');
              writeln('C. Keyboard');
              writeln('D. Scanner');
              kunci := 2;
            end;

            5: begin
              writeln('5. Pascal merupakan bahasa...');
              writeln('A. Desain grafis');
              writeln('B. Pengolah kata');
              writeln('C. Pemrograman');
              writeln('D. Sistem operasi');
              kunci := 3;
            end;
          end;

          write('Jawaban kamu (A/B/C/D): ');
          readln(jawaban);

          case jawaban of
            'a': jawaban := 'A';
            'b': jawaban := 'B';
            'c': jawaban := 'C';
            'd': jawaban := 'D';
          end;

          if jawaban = '0' then
          begin
            writeln('Kuis dihentikan.');
            break;
          end;

          if ((kunci = 1) and (jawaban = 'A')) or
             ((kunci = 2) and (jawaban = 'B')) or
             ((kunci = 3) and (jawaban = 'C')) or
             ((kunci = 4) and (jawaban = 'D')) then
          begin
            writeln('Jawaban benar!');
            benar := benar + 1;
          end
          else
            writeln('Jawaban salah.');

          writeln;
        end;

        skorTerakhir := benar * 20;
        Pernah_Main := true;
        
        if skorTerakhir > skorTertinggi then
        begin
          skorTertinggi := skorTerakhir;
          writeln('REKOR BARU! Skor tertinggi berhasil dipecahkan!');
        end;

        writeln;
        TextColor(blue);
        writeln('============ HASIL KUIS ============');
        writeln('Jumlah jawaban benar: ', benar);
        writeln('Skor akhir: ', skorTerakhir);

        if (skorTerakhir >= 0) and
           (skorTerakhir <= 20) then
          writeln('Segini doang? Nenek gua lebih jago!')
        else if (skorTerakhir) <= 60 then
          writeln('KKM aja 70!')
        else if (skorTerakhir) <= 100 then
          writeln('Gelo, profesor!');

        writeln('Rekor skor tertinggi: ', skorTertinggi);
        writeln('====================================');
        writeln;
      end;

      2: begin
        writeln;
        TextColor(yellow);
        writeln('============= PETUNJUK KUIS =============');
        writeln('1. Kuis terdiri dari 5 pertanyaan');
        writeln('2. Pilih jawaban A, B, C, atau D');
        writeln('3. Setiap jawaban benar bernilai 20 poin');
        writeln('4. Masukkan 0 untuk menghentikan kuis');
        TextColor(white);
        writeln;
      end;

      3: begin
        writeln;
        if Pernah_Main then
        begin
          writeln('Skor terakhir: ', skorTerakhir);
          writeln('Rekor tertinggi: ', skorTertinggi);
        end
        else
          writeln('Kamu belum pernah mengikuti kuis.');

        writeln;
      end;

      4: begin
        writeln('Terima kasih sudah bermain!');
      end;
    
    else
    TextColor(lightred);
      writeln('Pilihan tidak valid. Silakan coba lagi.');
    TextColor(white);
    end;

    writeln;

  until pilihan = 4;

  writeln('Program selesai.');
end.