      ******************************************************************
      * Author: YANN ANTUNES LOPES
      * Date: 12/10/26
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TABUADA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 WS-N1 PIC 9(02).
       01 WS-N2 PIC 9(02).
       01 WS-RESULTADO PIC 9(02).

       PROCEDURE DIVISION.

           DISPLAY 'TABUADA USANDO O PERFORM VARYING'

           PERFORM VARYING WS-N2 FROM 1 BY 1 UNTIL WS-N2 > 10
               MOVE 1 TO WS-N1

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           PERFORM VARYING WS-N2 FROM 1 BY 1 UNTIL WS-N2 > 10
               MOVE 2 TO WS-N1

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           PERFORM VARYING WS-N2 FROM 1 BY 1 UNTIL WS-N2 > 10
               MOVE 3 TO WS-N1

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           PERFORM VARYING WS-N2 FROM 1 BY 1 UNTIL WS-N2 > 10
               MOVE 4 TO WS-N1

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           PERFORM VARYING WS-N2 FROM 1 BY 1 UNTIL WS-N2 > 10
               MOVE 5 TO WS-N1

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           PERFORM VARYING WS-N2 FROM 1 BY 1 UNTIL WS-N2 > 10
               MOVE 6 TO WS-N1

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           PERFORM VARYING WS-N2 FROM 1 BY 1 UNTIL WS-N2 > 10
               MOVE 7 TO WS-N1

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           PERFORM VARYING WS-N2 FROM 1 BY 1 UNTIL WS-N2 > 10
               MOVE 8 TO WS-N1

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           PERFORM VARYING WS-N2 FROM 1 BY 1 UNTIL WS-N2 > 10
               MOVE 9 TO WS-N1

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           DISPLAY 'TABUADA USANDO O TIMES'

           INITIALIZE WS-N2
           PERFORM 10 TIMES
               ADD 01 TO WS-N2
               MOVE 01 TO WS-N1

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           INITIALIZE WS-N2
           PERFORM 10 TIMES
               ADD 01 TO WS-N2
               MOVE 02 TO WS-N1

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           INITIALIZE WS-N2
           PERFORM 10 TIMES
               ADD 01 TO WS-N2
               MOVE 03 TO WS-N1

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           INITIALIZE WS-N2
           PERFORM 10 TIMES
               ADD 01 TO WS-N2
               MOVE 04 TO WS-N1

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           INITIALIZE WS-N2
           PERFORM 10 TIMES
               ADD 01 TO WS-N2
               MOVE 05 TO WS-N1

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           INITIALIZE WS-N2
           PERFORM 10 TIMES
               ADD 01 TO WS-N2
               MOVE 06 TO WS-N1

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           INITIALIZE WS-N2
           PERFORM 10 TIMES
               ADD 01 TO WS-N2
               MOVE 07 TO WS-N1

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           INITIALIZE WS-N2
           PERFORM 10 TIMES
               ADD 01 TO WS-N2
               MOVE 08 TO WS-N1

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           INITIALIZE WS-N2
           PERFORM 10 TIMES
               ADD 01 TO WS-N2
               MOVE 09 TO WS-N1

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           DISPLAY 'TABUADA USANDO O UNTIL'

           INITIALIZE WS-N2
           PERFORM UNTIL WS-N2 >= 10
               MOVE 01 TO WS-N1
               ADD 01 TO WS-N2

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           INITIALIZE WS-N2
           PERFORM UNTIL WS-N2 >= 10
               MOVE 02 TO WS-N1
               ADD 01 TO WS-N2

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           INITIALIZE WS-N2
           PERFORM UNTIL WS-N2 >= 10
               MOVE 03 TO WS-N1
               ADD 01 TO WS-N2

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           INITIALIZE WS-N2
           PERFORM UNTIL WS-N2 >= 10
               MOVE 04 TO WS-N1
               ADD 01 TO WS-N2

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           INITIALIZE WS-N2
           PERFORM UNTIL WS-N2 >= 10
               MOVE 05 TO WS-N1
               ADD 01 TO WS-N2

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           INITIALIZE WS-N2
           PERFORM UNTIL WS-N2 >= 10
               MOVE 06 TO WS-N1
               ADD 01 TO WS-N2

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           INITIALIZE WS-N2
           PERFORM UNTIL WS-N2 >= 10
               MOVE 07 TO WS-N1
               ADD 01 TO WS-N2

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           INITIALIZE WS-N2
           PERFORM UNTIL WS-N2 >= 10
               MOVE 08 TO WS-N1
               ADD 01 TO WS-N2

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'

           INITIALIZE WS-N2
           PERFORM UNTIL WS-N2 >= 10
               MOVE 09 TO WS-N1
               ADD 01 TO WS-N2

               COMPUTE WS-RESULTADO = WS-N1 * WS-N2

           DISPLAY 'O VALOR DA CONTA: ' WS-N1 'X' WS-N2 '=' WS-RESULTADO

           END-PERFORM

           DISPLAY '----------------------------------------'


            STOP RUN.
       END PROGRAM TABUADA.
