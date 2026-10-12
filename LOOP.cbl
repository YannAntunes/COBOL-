      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. LOOPING.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       77 WS-CONT PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.

           PERFORM 10 TIMES
               ADD 1 TO WS-CONT
               DISPLAY 'TESTE1: ' WS-CONT
           END-PERFORM

           DISPLAY '--------------------------------------'

           INITIALIZE WS-CONT
           PERFORM VARYING WS-CONT FROM 1 BY 1 UNTIL WS-CONT > 10
               DISPLAY 'TESTE2: ' WS-CONT
           END-PERFORM

           DISPLAY '--------------------------------------'
           INITIALIZE WS-CONT
           PERFORM UNTIL WS-CONT >= 10
               ADD 1 TO WS-CONT
               DISPLAY 'TESTE3: ' WS-CONT
           END-PERFORM

           STOP RUN.
       END PROGRAM LOOPING.
