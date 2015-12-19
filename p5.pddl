;; Block A is on the table, B is on A and C on B.  A red sprayer is on
;; the table.  A green paint can is on the sprayer and a blue paint
;; can on the green paint can and a water bucket on the blue can.  A
;; clean brush is on the water bucket.  The goal is to make A red, B
;; green and C blue and to have A on B, B on C and C on the table. The
;; brush should be clean and on top of the paint can with green paint.

(define (problem 01)
  (:domain hw3)
  (:objects a b c brush1 can1 can2 can3 spray1 spray2 spray3 water1 red green blue)
  (:init (arm-empty)
  
  		 ;there are a, b, c block and b is on a, c is on b 
  		 (on-table a)         
         (on b a)
         (on c b)
         (clear c)
         
         ;there is a red spray, clean brush, water bucket, green can and blue can
         (water water1)
  		 (brush brush1)
  		 (clean brush1)
  		 (spray spray1)
  		 (has-color spray1 red)
  		 (can can1)
  		 (has-color can1 green)
  		 (has-color can2 blue)
  		 (can can2)
  		 
  		 ;green can is on red spray, blue can is on green can
  		 ;water bucket is on green can and brush is on water bucket
  		 (on-table spray1)
  		 (on can1 spray1)
  		 (on can2 can1)
  		 (on water1 can2)
  		 (on brush1 water1)
  		 (clear brush1)
  		 
  		 ;red, green and blue are colors
		 (color red)
		 (color green)
		 (color blue)
		)      
  
  ;goal is to have block a, b, c colored red, green, blue respectively 
  ;and b is on c, a is on b and c is on table with arm empty and brush clean
  ;and brush should be on green can
  (:goal (and (color a red) 
              (color b green) 
              (color c blue) 
              (on-table c) 
              (on b c) 
              (on a b) 
              (arm-empty) 
              (clean brush1) 
              (on brush1 can1))
   )
)
