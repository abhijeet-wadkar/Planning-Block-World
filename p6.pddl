;; Block A is on the table, B is on A and C on B.  Cans of red, green
;; and blue paint are on the table along with three clean brushes.
;; There is no water bucket.  The goal is to make A red, B green and C
;; blue and to have A on B, B on C and C on the table and the arm
;; empty.

(define (problem 01)
  (:domain hw3)
  (:objects a b c brush1 brush2 brush3 can1 can2 can3 red green blue)
  (:init (arm-empty)
  
  		 ;there are a, b, c block and b is on a, c is on b
  		 (on-table a)         
         (on b a)
         (on c b)
         (clear c)
           		 
         ;there is a clean brush on table with nothing on it
  		 (brush brush1)
  		 (on-table brush1)
  		 (clear brush1)
  		 (clean brush1)
  		 
  		 ;there is a clean brush on table with nothing on it
  		 (brush brush2)
  		 (on-table brush2)
  		 (clear brush2)
  		 (clean brush2)
  		 
  		 ;there is a clean brush on table with nothing on it
  		 (brush brush3)
  		 (on-table brush3)
  		 (clear brush3)
  		 (clean brush3)
  		 
  		 ;there is a red can on the table with nothing on it
  		 (on-table can1)
  		 (clear can1)
  		 (can can1)
  		 (has-color can1 red)
  		 
  		 ;there is a green can on the table with nothing on it
  		 (on-table can2)
  		 (clear can2)
  		 (can can2)
  		 (has-color can2 green)
  		 
  		 ;there is a blue can on the table with nothing on it
  		 (on-table can3)
  		 (clear can3)
  		 (can can3)
  		 (has-color can3 blue)  		 
  		 
  		 ;red, green and blue are colors
		 (color red)
		 (color green)
		 (color blue)
		)      
  
  ;goal is to have block a, b, c colored red, green, blue respectively 
  ;and b is on c, a is on b and c is on table with arm empty
  (:goal (and (color a red) 
              (color b green) 
              (color c blue) 
              (on-table c) 
              (on b c) 
              (on a b) 
              (arm-empty))
  )
)
