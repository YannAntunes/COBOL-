      ******************************************************************
      * Author: YANN ANTUNES LOPES
      * Date: 12/10/26
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULADORA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-N1 PIC 9(03).
       01 WS-N2 PIC 9(03).
       77 WS-RESUL PIC 9(05)V99.
       77 WS-FORMULA PIC X(04).

       PROCEDURE DIVISION.

       PERFORM UNTIL WS-FORMULA = 'EXIT'

           DISPLAY ' CALCULADORA (DIGITE EXIT PRA SAIR)'
           DISPLAY 'QUAL FORMULA USAR (SOMA, SUB, MULT, DIV, EXIT): '
           ACCEPT WS-FORMULA

           IF WS-FORMULA NOT = 'EXIT'

               DISPLAY 'QUAL E O PRIMEIRO NUMERO DO CALCULO: '
               ACCEPT WS-N1

               DISPLAY 'QUAL E O SEGUNDO NUMERO DO CALCULO: '
               ACCEPT WS-N2

               IF WS-FORMULA = 'SOMA'
                   COMPUTE WS-RESUL = WS-N1 + WS-N2
                   DISPLAY 'RESULTADO DE ' WS-N1 '+' WS-N2 '=' WS-RESUL

               ELSE IF WS-FORMULA = 'SUB'
                   COMPUTE WS-RESUL = WS-N1 - WS-N2
                   DISPLAY 'RESULTADO DE ' WS-N1 '-' WS-N2 '=' WS-RESUL

               ELSE IF WS-FORMULA = 'MULT'
                   COMPUTE WS-RESUL = WS-N1 * WS-N2
                   DISPLAY 'RESULTADO DE ' WS-N1 '*' WS-N2 '=' WS-RESUL

               ELSE IF WS-FORMULA = 'DIV'
                   COMPUTE WS-RESUL = WS-N1 / WS-N2
                   DISPLAY 'RESULTADO DE ' WS-N1 '/' WS-N2 '=' WS-RESUL

               ELSE
                   DISPLAY 'COLOQUE UMA FORMULA'

               END-IF

           END-IF

       END-PERFORM.
           DISPLAY 'PROGRAMA ENCERRADO'

           STOP RUN.

       END PROGRAM CALCULADORA.
