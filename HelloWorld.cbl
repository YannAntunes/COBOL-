
       IDENTIFICATION DIVISION.
       PROGRAM-ID. HelloWorld.
       AUTHOR. Yann Antunes

       ENVIRONMENT DIVISION.



       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-VARIAVEL1 PIC 9(04).
       01 WS-VARIAVEL2 PIC 9(04).
       01 WS-VARIAVEL3 PIC 9(04).
       01 WS-VARIAVEL4 PIC X(06).
       77 WS-CONTADOR1 PIC ZZZ9.
       01 WS-ENDERECO.
           03 WS-BAIRRO PIC X(15).
           03 WS-RUA    PIC X(10).
           03 WS-CIDADE PIC X(20).
           03 WS-QUADRA PIC 9(02).
           03 WS-CEP    PIC 9(08).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            DISPLAY "Meu primeiro codigo em COBOL"

            MOVE 10 TO WS-VARIAVEL1
            MOVE 05 TO WS-VARIAVEL2

            COMPUTE WS-VARIAVEL3 = WS-VARIAVEL2 + WS-VARIAVEL1

            DISPLAY 'VARIAVEL 3: ' WS-VARIAVEL3



            MOVE 10 TO WS-CONTADOR1

            DISPLAY 'CONTADOR: ' WS-CONTADOR1

            MOVE 'SANTA MARIA' TO WS-BAIRRO
            MOVE 'BRASILIA' TO WS-CIDADE
            MOVE 54546888 TO WS-CEP
            MOVE 'NEW YORK' TO WS-RUA

            DISPLAY WS-ENDERECO
            DISPLAY WS-BAIRRO

            DISPLAY 'APENAS A RUA: ' WS-ENDERECO(16:10)


            STOP RUN.
       END PROGRAM HelloWorld.
