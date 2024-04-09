       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARRAY-EXAMPLE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 MY-ELEMENTS       PIC 9(3)          OCCURS 10 TIMES.
       01 NUM-COUNT         PIC 9(3)          VALUE 0.
       01 TOTAL             PIC 9(6)          VALUE 0.
       01 AVERAGE           PIC 9(6)V9(2)     VALUE 0.
       PROCEDURE DIVISION.
           PERFORM VARYING NUM-COUNT FROM 1 BY 1 UNTIL NUM-COUNT > 10
               DISPLAY 'Enter number ' NUM-COUNT ':'
               ACCEPT MY-ELEMENTS(NUM-COUNT)
               ADD MY-ELEMENTS(NUM-COUNT) TO TOTAL
           END-PERFORM.
           DIVIDE TOTAL BY 10 GIVING AVERAGE.
           DISPLAY 'The average is ' AVERAGE.
           STOP RUN.

