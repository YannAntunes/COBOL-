      ******************************************************************
      * Author: YANN ANTUNES LOPES
      * Date: 30/09/2026
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. LISTA-DE-IDADE.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

       SELECT ARQALUNO ASSIGN TO DISK
              ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.

       FILE SECTION.
       FD ARQALUNO
          LABEL RECORD STANDARD
          VALUE OF FILE-ID IS 'ARQUIVOALUNO.txt'.
       01 FD-ARQ-ALUNO.
           03 FD-NOME PIC X(17).
           03 FD-IDADE PIC 9(02).


       WORKING-STORAGE SECTION.

       01 WS-EOF PIC X(01).
       01 WS-PESSOA PIC X(050).
       01 WS-CNT-ALUNO PIC 9(04).
       01 WS-TOTAL-IDADE PIC 9(04).
       01 WS-MEDIA-IDADE PIC 9(04)V99.
       01 FD-IDADE-MAIOR PIC 9(02) VALUE 0.
       01 FD-IDADE-MENOR PIC 9(02) VALUE 99.

       PROCEDURE DIVISION.
           PERFORM 1000-INICIO-PROGRAMA
           PERFORM 2000-PROCESSA-PROGRAMA
           PERFORM 3000-FINALIZA-PROGRAMA.

       1000-INICIO-PROGRAMA.
           OPEN INPUT ARQALUNO


           EXIT.

       2000-PROCESSA-PROGRAMA.

           PERFORM UNTIL WS-EOF = 'S'
               READ ARQALUNO AT END
                   MOVE 'S' TO WS-EOF
               NOT AT END
                   PERFORM 2001-PROCESSA-ARQUIVO
               END-READ
           END-PERFORM

           EXIT.

       2001-PROCESSA-ARQUIVO.
           ADD 1 TO WS-CNT-ALUNO
           ADD FD-IDADE TO WS-TOTAL-IDADE

           IF FD-IDADE > FD-IDADE-MAIOR OR FD-IDADE >=18
               MOVE FD-IDADE TO FD-IDADE-MAIOR
           END-IF

           IF FD-IDADE < FD-IDADE-MENOR OR FD-IDADE <=18
               MOVE FD-IDADE TO FD-IDADE-MENOR
           END-IF

           STRING 'NOME: ' FD-NOME DELIMITED BY SIZE
                  ' - '
                  'IDADE: ' FD-IDADE
                   INTO WS-PESSOA
           END-STRING.

           DISPLAY WS-PESSOA
           EXIT.

       3000-FINALIZA-PROGRAMA.

           DISPLAY 'QUANTIDADE DE ALUNO: ' WS-CNT-ALUNO
           DISPLAY 'TOTAL IDADE: ' WS-TOTAL-IDADE
           DISPLAY 'ESSA E A IDADE MAIOR: ' FD-IDADE-MAIOR
           DISPLAY 'ESSA E A IDADE MENOR: ' FD-IDADE-MENOR

           COMPUTE WS-MEDIA-IDADE = WS-TOTAL-IDADE / WS-CNT-ALUNO

           DISPLAY 'MEDIA DE IDADE: ' WS-MEDIA-IDADE


           CLOSE ARQALUNO.

            STOP RUN.
       END PROGRAM LISTA-DE-IDADE.
