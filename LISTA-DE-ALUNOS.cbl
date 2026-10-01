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

       SELECT ARQMAIOR ASSIGN TO DISK
              ORGANIZATION IS LINE SEQUENTIAL.

       SELECT ARQMENOR ASSIGN TO DISK
              ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.

       FILE SECTION.
       FD ARQALUNO
          LABEL RECORD STANDARD
          VALUE OF FILE-ID IS 'ARQUIVOALUNO.txt'.
       01 FD-ARQ-ALUNO.
           03 FD-NOME PIC X(017).
           03 FD-IDADE PIC 9(02).

       FD ARQMAIOR
          LABEL RECORD STANDARD
          VALUE OF FILE-ID IS 'ARQUIVOALUNOMAIOR.txt'.
       01 FD-ARQ-ALUNO-MA.
           03 FD-NOME-MA PIC X(017).
           03 FD-IDADE-MA PIC 9(02).
           03 FD-DESCIDADE-MA PIC X(20).

       FD ARQMENOR
          LABEL RECORD STANDARD
          VALUE OF FILE-ID IS 'ARQUIVOALUNOMENOR.txt'.

       01 FD-ARQ-ALUNO-ME.
           03 FD-NOME-ME PIC X(017).
           03 FD-IDADE-ME PIC 9(02).
           03 FD-DESCIDADE-ME PIC X(20).

       WORKING-STORAGE SECTION.

       01 WS-EOF PIC X(01).

       PROCEDURE DIVISION.
           PERFORM 1000-INICIO-PROGRAMA
           PERFORM 2000-PROCESSA-PROGRAMA
           PERFORM 3000-FINALIZA-PROGRAMA.

       1000-INICIO-PROGRAMA.
           OPEN INPUT ARQALUNO
           OPEN OUTPUT ARQMAIOR
           OPEN OUTPUT ARQMENOR

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
               DISPLAY 'NOME: ' FD-NOME
                       ' IDADE: ' FD-IDADE

               IF FD-IDADE >= 18
                  MOVE FD-NOME TO FD-NOME-MA
                  MOVE FD-IDADE TO FD-IDADE-MA

                  MOVE 'MAIOR IDADE' TO FD-DESCIDADE-MA
                  WRITE FD-ARQ-ALUNO-MA
               ELSE
                  MOVE FD-NOME TO FD-NOME-ME
                  MOVE FD-IDADE TO FD-IDADE-ME

                  MOVE 'MENOR IDADE' TO FD-DESCIDADE-ME
                  WRITE FD-ARQ-ALUNO-ME
              END-IF

           EXIT.
       3000-FINALIZA-PROGRAMA.

           CLOSE ARQALUNO
           CLOSE ARQMAIOR
           CLOSE ARQMENOR
           STOP RUN
           EXIT.

       END PROGRAM LISTA-DE-IDADE.
