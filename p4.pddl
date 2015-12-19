;; Block A is on the table, B is on A and C on B.  On the table are a
;; watr bucket, a red sprayer, cans of blue and green paint and a
;; clean brush.  The goal is to make A red, B green and C blue and to
;; have A on B, B on C and C on the table and the brush clean and arm
;; empty.

(define (problem 01)
  (:domain hw3)
  (:objects a b c brush1 can1 can2 can3 spray1 spray2 spray3 water1 red green blue)
  (:init (arm-empty)
 
 		 ;there are a, b, c block and b is on a, c is on b 
  		 (on-table a)         
         (on b a)
         (on c b)
         (clear c)
         
         ;there is a water bucket on the table with nothing on it
  		 (on-table water1)
  		 (water water1)
  		 (clear water1)
  
  		 ;there is a clean brush on the table with nothing on it
  		 (brush brush1)
  		 (on-table brush1)
  		 (clear brush1)
  		 (clean brush1)
  		 
  		 ;there is a blue can on the table with nothing on it
  		 (on-table can1)
  		 (clear can1)
  		 (can can1)
  		 (has-color can1 blue)
  		 
  		 ;there is a green can on the table with nothing on it
  		 (on-table can2)
  		 (clear can2)
  		 (can can2)
  		 (has-color can2 green)
  		 
  		 ;there is a red spray on the table with nothing on it
  		 (on-table spray1)
         (clear spray1)
         (spray spray1)
         (has-color spray1 red)

		 ;red, green and blue are colors
		 (color red)
		 (color green)
		 (color blue))      
  
  ;goal is to have block a, b, c colored red, green, blue respectively 
  ;and b is on c, a is on b and c is on table with arm empty and brush clean
  (:goal (and (color a red) 
              (color b green) 
              (color c blue) 
              (on-table c)
              (on b c) 
              (on a b) 
              (arm-empty) 
              (clean brush1))
   )
)
