with Ada.Containers.Ordered_Sets;
with Ada.Text_IO; use Ada.Text_IO;

procedure Remove_Duplicate_Elements is
   package Int_Sets is new Ada.Containers.Ordered_Sets(Integer);
   use Int_Sets;
   Nums : array (Natural range <>) of Integer := (20,5,28,17,11,11,20,11,2,13,26,6,18,4,14,29,1,7,20,22,9,4,13,2,3,7,25,24,14,14,19,11,4,4,14,8,27,3,11,5,4,10,8,12,17,21,4,20,28,4,17,11,24,29,11,16,29,14,17,3,15,29,9,18,26,26,18,7,3,18,7,12,3,29,22,12,18,3,6,4,6,1,11,26,17,21,4,18,6,28,1,15,29,3,13,21,10,16,11,26,8,17,5,7,29,25,17,23,1,23,10,10,10,30,14,21,14,5,14,8,21,2,1,11,15,10,6,5,25,17,16,9,17,17,8,21,17,1,3,22,8,18,1,17,4,12,16,20,6,4,18,6,22,30,30,16,7,29,29,20,17,25,30,29,8,15,2,13,30,22,30,1,9,8,28,15,5,28,29,12,15,26,10,15,8,23,10,3,13,26,11,22,9,22,6,23,27,29,15,12,11,28,17,11,14,28,15,11,29,21,8,16,27,17,28,2,11,11,29,19,16,12,1,28,3,26,24,2,21,30,11,10,3,25,23,2,22,21,24,12,14,12,27,27,10,10,23,14,17,19,5,18,8,29,10,30,19,10,5,9,24,9,30,3,27,20,24,1,21,15,17,21,9,30,4,10,6,7,3,20,3,5,5,30,10,9,29,23,27,3,20,3,23,11,22,7,2,26,28,24,28,19,30,7,4,3,7,4,10,9,6,24,7,26,14,27,5,16,26,1,20,28,23,3,24,26,8,14,21,18,26,22,25,2,21,24,16,28,13,23,8,19,17,4,27,14,26,6,30,27,20,26,25,13,22,9,6,5,2,4,1,27,20,29,6,4,23,26,23,13,4,27,9,24,21,12,19,5,11,9,15,18,29,16,26,23,2,21,16,3,26,20,8,16,26,13,9,23,16,5,23,11,11,3,26,12,18,5,19,11,15,5,8,16,14,20,9,14,28,22,8,27,26,30,21,20,1,2,26,24,10,4,16,3,3,8,8,22,13,6,8,22,26,9,8,22,30,12,9,17,14,21,8,8,20,14,10,23,5,3,23,21,7,30,2,1,6,7,29,29,20,3,28,3,19,19,20,3,26,26,12,28,13,4,8,12,14,3,19,7,8,28,10,24,24,9,23,16,8,8,10,11,15,26,8,1,9,22,14,12,25,19,21,26,8,25,28,3,19,21,24,26,23,16,25,17,21,14,3,18,12,15,30,30,21,4,14,14,2,11,27,8,27,23,27,21,17,16,23,12,3,21,5,13,12,27,18,25,3,7,3,15,30,3,2,2,26,26,27,9,24,26,21,10,30,21,4,19,17,22,18,10,16,27,9,3,25,8,14,3,19,4,23,22,1,18,3,3,1,6,1,11,10,14,19,23,15,17,23,30,26,8,30,27,19,21,4,28,27,11,7,4,1,10,28,24,10,3,16,16,30,15,11,7,21,14,1,18,25,5,13,21,12,13,18,10,14,15,4,12,20,27,17,7,27,29,26,27,19,18,8,14,21,23,17,21,4,28,16,14,9,30,24,6,23,27,23,6,12,14,6,24,30,3,22,18,16,6,19,6,9,12,7,14,25,30,17,11,22,9,13,7,17,15,27,25,27,21,8,29,11,7,3,30,30,23,30,22,30,6,28,17,23,7,14,21,13,18,22,30,23,19,25,7,16,6,15,30,11,20,14,14,29,7,29,19,18,29,30,2,14,22,29,3,25,3,3,7,7,17,4,21,14,7,13,15,12,23,18,8,19,11,10,11,25,18,26,24,22,20,3,3,4,16,4,7,8,4,4,9,4,24,25,25,14,2,22,29,21,16,3,12,14,11,2,17,3,12,1,23,22,2,20,24,25,5,11,9,7,29,21,20,9,22,24,16,26,15,17,5,25,1,5,12,23,22,10,27,17,12,26,18,26,10,6,15,6,11,13,16,22,3,7,2,28,21,6,29,17,9,8,10,19,19,2,14,7,19,14,17,25,10,12,13,26,30,19,1,23,26,16,25,29,19,11,9,1,28,24,17,22,18,3,25,23,14,23,2,2,4,27,26,10,27,22,17,28,8,11,15,12,20,3,1,8,10,24,15,3,26,27,28,21,9,1,25,19,28,16,29,14,20,9,27,3,10,18,25,22,27,7,22,10,25,16,3,26,27,2,20,23,25,27,26,7,1,18,11,22,27,26,10,19,22,10,15,26,12,10,25,7,28,7,2,19,11,24,15,22,20,21,4,7,14,29,30,7,17,19,2,15,25,3,12,9,23,8,5,6,8,29,25,15,4,27,12,29,24,17,24,1,12,14,16,28,19,6,4,7,29,2,25,22,2,10,3,11,9,29,1,8,20,19,8,27,15,29,24,30,8,17,14,14,12,30,30,11,22,17,4,20,8,17,21,22,5,19,7,2,21,1,12,10,9,14,18,28,16,3,23,21,23,21,3,1,20,12,18,26,12,4,13,20,15,3,24,11,26,5,9,18,19,8,16,27,11,15,4,16,20,27,21,14,13,16,28,23,18,15,23,9,16,1,11,1,1,25,23,30,7,10,14,26,21,14,30,21,21,19,21,15,29,22,19,5,21,20,2,1,8,2,21,18,30,30,14,18,13,26,20,18,21,5,23,8,9,23,15,13,13,9,14,26,27,15,22,14,5,3,7,17,11,8,26,6,17,2,16,7,7,12,15,19,7,6,21,11,1,26,6,1,30,29,30,8,20,15,13,25,6,6,11,25,2,29,3,16,4,26,3,6,30,26,16,3,28,21,11,30,1,1,25,27,27,10,25,24,8,25,30,6,6,18,29,3,28,6,11,16,6,2,23,12,15,27,13,26,8,28,14,12,5,6,24,6,5,28,14,28,20,21,20,23,20,7,14,10,5,15,30,8,2,17,23,19,16,12,22,25,21,16,15,20,22,15,13,16,6,6,24,16,19,11,10,11,11,28,21,29,13,15,30,7,1,2,19,16,18,15,24,27,13,10,12,10,9,30,9,14,22,5,27,13,25,18,4,5,14,13,26,24,15,17,17,16,18,10,3,25,4,3,15,2,27,15,1,1,4,5,3,17,23,2,30,20,28,15,24,16,24,27,26,16,25,25,18,24,16,15,9,30,20,1,29,22,6,20,27,8,28,18,21,5,11,19,9,11,21,16,29,28,4,22,12,10,15,26,16,11,25,11,22,11,5,23,22,3,27,3,4,8,2,24,1,9,23,8,16,8,4,10,7,6,20,15,29,4,10,10,17,23,30,29,12,3,12,2,29,4,30,6,1,13,20,5,15,29,6,7,19,9,8,14,27,27,3,18,8,29,8,5,1,22,1,14,4,7,28,2,1,19,3,11,2,21,22,24,14,29,1,17,24,9,10,22,5,8,20,16,2,30,20,19,28,22,15,25,8,15,7,4,2,10,15,5,2,30,5,2,2,3,20,9,8,5,19,10,22,25,28,19,13,12,25,5,22,18,27,12,18,10,14,17,12,23,5,2,19,11,27,2,19,12,22,15,26,29,7,28,9,13,9,16,1,13,6,5,4,9,19,24,30,7,26,7,21,12,11,29,13,25,11,22,22,30,23,24,6,15,5,18,12,2,6,21,16,17,11,12,1,17,12,9,11,21,26,24,3,15,8,13,4,5,11,15,18,18,4,14,30,28,29,1,12,18,11,21,13,26,9,5,6,22,21,6,28,11,8,6,3,21,18,30,9,10,11,13,25,9,30,29,7,21,8,13,28,27,12,16,5,10,11,12,23,13,23,24,9,17,10,19,4,16,3,9,14,16,27,2,10,30,24,26,10,7,30,15,7,14,3,17,16,11,30,25,29,19,15,25,11,7,5,19,19,26,26,3,12,26,5,24,19,11,28,22,13,18,18,27,29,20,15,27,9,5,25,28,23,12,10,19,29,10,4,14,29,20,27,6,11,18,11,10,10,2,27,26,13,26,1,28,27,8,20,26,6,26,2,10,9,27,3,4,11,10,28,15,27,21,27,27,3,15,22,12,13,23,7,2,22,30,25,29,22,9,19,16,21,20,15,29,28,1,24,10,17,19,26,9,7,29,25,29,19,17,5,30,4,21,22,15,20,22,13,26,12,5,7,21,5,12,19,13,3,26,18,13,7,18,5,15,1,2,19,19,17,12,6,21,27,12,29,19,4,11,18,29,29,13,20,2,4,2,18,25,10,8,5,9,30,8,7,18,30,23,13,25,30,6,9,14,28,10,27,19,23,24,28,6,25,1,25,22,8,22,21,3,1,4,1,4,30,6,2,13,21,1,13,29,15,5,10,26,27,1,2,10,26,28,26,1,20,26,18,5,21,8,26,17,4,28,18,5,29,4,15,9,20,11,25,24,21,17,4,18,25,14,23,25,24,29,3,22,14,3,3,9,15,15,5,27,26,21,27,28,21,8,1,12,12,13,28,29,22,16,29,3,2,11,15,28,24,13,14,19,8,19,16,21,4,3,11,25,18,11,26,2,20,22,5,12,10,11,8,21,26,16,1,7,13,16,25,26,19,1,20,18,10,24,15,6,30,17,30,23,15,21,1,5,21,5,29,17,12,23,18,22,24,10,3,17,4,6,3,28,26,20,18,23,23,7,21,8,18,6,19,24,4,22,9,29,11,28,20,3,26,20,20,9,3,16,10,28,28,27,5,14,11,11,6,24,29,8,2,25,13,19,4,14,9,8,23,3,7,17,18,10,17,4,17,6,15,29,25,16,19,29,30,20,29,5,25,25,20,25,11,6,16,23,21,5,18,16,26,8,8,16,16,18,2,14,13,10,29,13,1,3,25,9,21,28,9,16,14,14,28,25,9,27,20,30,8,25,18,27,28,24,25,29,15,30,19,30,6,22,14,15,27,7,25,2,4,14,29,15,13,28,18,2,10,16,24,23,28,24,11,7,27,14,16,20,19,12,26,2,27,23,15,25,11,18,8,1,20,26,17,4,7,5,6,17,18,20,23,12,27,19,28,6,27,11,1,19,10,10,1,24,11,1,23,20,10,8,28,15,9,14,9,13,2,28,14,16,11,1,5,3,10,7,13,23,4,29,21,29,5,14,5,26,8,22,20,7,17,26,9,27,28,18,22,12,1,5,8,4,6,12,18,28,21,10,6,4,18,5,22,13,6,23,7,4,30,6,25,28,27,26,23,21,7,1,1,21,22,5,11,9,13,17,15,4,14,13,23,9,27,8,6,22,5,29,21,28,23,18,22,18,26,3,29,10,12,17,5,10,6,25,15,15,7,9,9,19,7,9,14,12,12,10,21,14,15,29,23,24,17,20,3,21,22,6,26,2,18,19,2,19,28,18,20,17,9,26,14,16,17,2,8,5,12,27,21,17,4,9,24,10,3,27,13,8,21,4,5,13,21,23,1,25,15,6,3,12,13,2,7,18,24,9,14,10,8,11,15,4,18,8,6,8,6,7,7,16,20,22,7,7,30,11,3,28,16,9,4,6,24,19,16,11,17,20,2,4,6,1,22,9,12,7,15,13,17,8,11,12,14,22,24,14,3,9,18,1,27,18,24,19,26,17,1,5,3,14,2,6,4,22,15,29,25,12,5,28,10,23,24,11,10,4,9,7,22,3,4,9,25,17,13,27,4,15,16,25,14,26,20,26,29,20,17,16,21,20,13,20,25,16,8,14,27,27,12,8,24,22,29,15,8,15,9,27,12,13,12,28,2,14,24,27,5,23,10,2,26,23,23,26,25,7,21,26,15,30,29,4,26,12,16,7,21,22,26,22,10,23,22,19,30,11,1,17,21,24,14,5,26,23,2,19,5,18,10,27,5,1,29,29,26,3,14,3,10,17,6,9,9,20,13,1,13,17,4,7,27,30,15,16,23,28,12,28,16,3,7,2,15,5,20,8,3,26,20,10,7,23,24,27,6,28,12,20,11,13,15,19,22,2,6,16,27,29,9,21,2,15,8,29,11,22,25,9,21,16,25,21,30,24,11,6,28,8,3,23,18,16,12,29,15,26,29,29,4,15,23,27,11,19,11,19,20,9,13,4,1,9,16,18,6,1,28,20,5,4,23,21,16,22,4,10,22,22,28,25,18,29,3,21,30,23,20,18,27,30,1,10,13,26,2,10,29,3,17,26,9,2,11,11,4,26,3,18,30,11,3,28,16,1,14,7,29,23,15,20,15,18,1,6,25,26,29,3,26,11,7,23,9,7,23,1,21,20,17,2,28,7,21,13,9,30,7,3,14,19,11,20,28,4,16,21,20,6,5,7,6,28,2,6,11,28,15,14,20,9,11,2,14,12,27,12,14,10,1,2,18,30,23,7,15,28,13,11,30,11,19,17,16,12,13,1,27,3,21,2,28,7,30,8,29,13,6,8,12,16,21,28,12,27,9,12,28,12,29,24,15,26,6,17,13,21,12,5,18,1,27,15,25,7,7,6,20,5,16,8,26,18,30,14,4,28,24,22,17,12,24,1,28,12,30,10,10,30,9,30,30,20,15,6,21,25,23,19,2,11,20,2,23,10,12,2,4,14,11,28,6,28,4,3,14,1,3,25,27,2,16,7,11,25,28,9,6,8,28,10,18,18,19,17,19,23,27,6,16,2,30,15,13,5,12,17,28,24,24,16,19,16,21,8,25,4,25,12,13,4,28,25,19,26,17,15,20,2,15,14,15,27,28,9,14,26,5,16,14,20,1,13,8,29,19,16,9,19,4,30,18,13,18,6,2,27,6,15,24,15,18,5,18,5,6,26,15,13,16,16,28,16,24,9,22,4,5,2,21,8,14,25,4,23,5,24,26,30,11,15,9,24,14,5,5,11,4,5,7,29,28,9,29,2,3,4,27,18,16,5,6,18,30,1,14,22,29,28,27,3,23,29,15,14,20,4,16,10,30,21,15,2,25,1,27,27,21,6,13,29,25,23,1,2,15,5,11,23,8,12,27,19,5,16,8,20,6,23,10,13,25,23,4,11,24,22,6,1,4,4,10,10,29,4,2,20,9,25,4,20,2,7,23,19,17,10,24,10,19,2,5,18,17,10,11,4,26,19,9,6,20,14,5,9,10,10,28,11,11,8,6,7,11,16,29,30,25,6,24,15,12,1,8,15,14,1,5,13,7,9,9,22,28,18,21,3,18,30,10,18,25,22,2,13,30,29,5,5,30,22,21,11,2,3,21,30,22,15,2,29,18,17,4,13,19,3,30,3,23,3,13,6,11,24,5,20,18,16,30,27,18,14,9,22,10,6,16,6,17,8,28,19,3,23,19,30,18,21,25,17,21,3,11,8,22,15,16,6,19,14,13,5,6,13,5,18,13,4,26,22,26,14,20,7,4,3,9,23,27,2,2,10,21,8,13,8,25,8,11,1,3,7,15,26,7,7,7,24,30,5,13,4,22,30,1,14,12,9,13,25,26,19,7,20,23,10,20,6,27,13,3,3,15,22,1,20,10,14,4,1,30,3,9,20,16,29,11,9,1,26,23,16,16,9,26,1,15,13,25,3,2,27,30,19,5,29,16,8,6,16,24,6,8,15,28,18,24,17,7,13,10,24,12,9,10,28,30,15,18,11,8,30,2,21,11,21,9,11,23,26,27,19,10,20,6,24,14,9,19,16,26,29,26,5,5,11,12,30,11,23,28,2,15,17,10,28,30,7,13,11,23,20,12,22,20,1,28,17,5,30,11,17,15,6,27,6,18,15,5,22,30,8,1,18,21,19,8,30,18,24,5,8,30,29,13,8,12,29,7,2,2,30,20,11,19,28,2,10,11,2,7,28,15,7,3,20,22,17,29,6,28,7,1,29,1,4,21,20,18,12,24,25,9,21,12,28,9,29,21,19,13,2,20,8,18,26,1,16,2,23,15,20,25,6,18,12,27,19,22,17,9,18,28,30,13,13,17,3,5,26,13,18,2,15,30,6,19,15,1,6,28,13,20,27,11,22,3,22,26,8,3,16,29,2,13,6,15,25,23,13,8,11,15,24,28,17,12,24,15,27,7,4,29,23,22,9,30,9,25,14,30,8,21,10,3,25,2,14,23,24,20,1,24,10,6,22,26,6,28,10,22,9,6,25,17,16,20,15,15,14,2,23,23,8,24,20,28,30,2,11,24,5,18,27,28,22,1,28,17,14,15,30,17,13,5,30,7,8,24,5,12,24,25,26,8,16,24,18,4,26,14,1,26,27,10,23,11,16,17,7,24,4,28,22,26,27,12,14,26,7,28,30,6,18,18,3,7,29,8,2,11,18,3,28,9,19,13,24,4,7,3,28,7,3,5,3,28,5,5,23,15,23,2,22,22,25,9,27,14,9,13,10,9,16,23,4,11,11,19,30,20,23,14,6,6,11,3,15,4,8,16,19,24,23,5,21,7,8,8,12,2,27,22,14,24,6,13,26,29,13,20,27,28,25,10,2,24,16,7,17,23,1,19,1,8,15,17,1,7,6,23,29,26,17,3,18,25,8,10,9,29,1,8,28,26,14,23,11,30,29,5,11,1,13,30,30,7,12,22,4,14,7,6,25,5,5,23,27,30,26,13,23,14,25,28,4,6,21,15,28,15,13,14,7,22,3,8,10,26,2,16,19,7,4,3,27,2,21,4,16,22,25,28,2,1,16,28,5,28,1,21,6,22,9,15,6,25,6,7,3,10,9,5,9,26,10,27,17,26,3,1,12,6,6,13,12,30,28,9,13,16,19,20,28,6,13,8,28,12,9,4,7,18,15,21,28,9,16,2,27,1,5,26,11,25,23,16,28,10,18,11,4,6,14,17,11,24,5,1,17,8,16,27,1,1,1,3,13,26,23,24,22,19,19,22,29,17,23,17,19,18,6,16,14,16,4,22,5,26,7,5,8,30,17,24,29,6,19,16,23,7,19,10,9,28,7,6,3,28,25,12,15,11,25,18,11,6,8,4,3,3,1,6,12,27,15,11,19,7,11,30,27,13,13,5,6,9,20,3,30,4,19,19,14,11,17,3,4,4,26,16,20,5,22,20,5,7,12,3,24,16,11,11,21,10,19,5,21,5,2,28,22,1,20,20,7,19,3,18,18,21,15,15,3,13,13,24,13,20,11,11,26,23,22,11,21,14,24,2,5,29,17,22,23,4,29,27,8,26,18,30,2,13,6,23,2,12,25,13,14,23,5,26,7,16,27,7,9,9,5,20,3,11,28,15,16,21,17,6,24,5,8,7,17,29,2,11,1,2,27,8,24,10,24,15,12,25,16,24,13,10,15,10,8,23,29,27,27,16,2,6,20,3,27,23,15,6,5,16,10,20,9,16,23,9,28,11,24,26,23,4,13,2,30,16,14,14,13,20,14,23,1,18,28,26,25,14,26,28,23,13,26,8,7,10,27,19,24,16,7,24,18,18,29,17,21,27,25,2,6,22,20,22,24,20,2,20,23,10,1,21,17,5,2,7,30,21,13,8,30,9,2,27,2,21,16,22,23,26,13,24,23,4,27,25,8,23,5,9,1,10,5,7,25,11,19,3,20,25,15,2,9,6,13,13,25,13,28,27,3,5,11,27,19,1,23,4,9,18,16,23,8,13,5,9,22,11,14,27,1,16,27,20,18,4,18,18,29,11,20,28,6,13,10,14,12,28,23,3,15,13,17,14,24,13,26,22,7,29,18,12,25,21,29,21,10,14,25,3,2,25,29,29,12,8,21,10,12,3,21,4,5,16,14,24,9,12,3,11,25,27,19,11,13,15,6,16,25,1,25,2,19,8,9,4,26,9,25,19,1,19,7,21,19,3,7,27,20,11,23,22,28,11,21,19,19,25,18,10,1,30,23,4,11,2,6,21,5,18,7,5,7,9,9,22,15,11,28,18,3,9,25,19,15,21,12,18,6,22,24,29,24,24,16,21,14,29,24,24,5,10,14,17,13,26,15,10,4,1,17,18,22,23,12,20,28,5,8,20,23,13,6,18,5,27,23,14,25,9,24,11,1,11,27,3,16,30,7,30,7,1,8,30,29,20,23,10,5,16,1,3,27,14,14,12,13,4,16,23,12,10,13,17,23,3,30,26,20,6,17,28,14,11,26,18,11,30,17,25,20,22,8,19,16,10,15,26,24,8,25,17,5,20,19,29,18,5,14,5,24,2,27,3,25,1,8,10,22,4,25,24,29,15,30,13,30,5,8,12,18,12,4,2,30,5,19,19,12,11,28,30,7,26,13,30,20,4,7,29,29,11,20,11,19,20,10,10,11,2,9,23,12,15,2,22,8,11,13,9,15,12,27,12,3,24,29,3,23,2,19,23,22,16,9,3,10,28,13,16,13,5,17,1,7,2,14,28,23,22,26,28,16,16,17,21,26,23,18,16,19,5,10,4,12,10,4,2,1,4,23,11,19,25,7,30,3,12,5,11,10,25,24,2,15,15,24,26,27,7,17,22,18,8,13,2,15,2,22,20,6,18,8,6,4,30,6,27,17,30,13,7,30,3,20,15,16,5,24,6,15,9,11,29,18,6,4,15,18,30,6,19,29,13,17,17,20,27,7,17,1,6,15,10,14,20,10,17,22,7,23,18,22,1,16,1,2,19,19,3,27,1,16,27,13,3,7,30,23,24,18,29,20,7,1,22,2,30,16,29,26,24,21,12,5,13,28,28,18,29,30,1,3,22,7,8,30,24,4,9,21,15,27,23,18,10,25,26,24,27,27,18,9,17,29,20,28,11,20,2,21,8,29,15,12,24,10,1,10,14,15,10,16,9,10,8,29,28,11,28,7,22,28,18,23,23,13,3,3,3,1,12,16,2,28,26,13,24,30,15,8,7,20,16,10,3,12,21,26,5,27,30,11,6,26,14,29,5,15,3,17,28,18,2,25,26,10,18,9,16,15,24,28,6,6,28,30,1,17,26,23,1,28,16,9,15,14,28,15,8,11,30,30,14,5,8,7,30,30,14,13,12,9,19,25,29,27,5,21,23,1,5,14,25,11,20,4,21,6,24,15,5,4,30,21,9,11,1,2,19,23,6,25,6,13,19,1,5,28,7,19,19,6,26,14,14,15,19,27,4,20,12,2,27,25,8,22,20,10,2,3,1,24,14,10,27,18,30,19,11,13,29,23,26,13,2,14,2,17,25,15,6,20,3,7,28,15,13,21,15,3,30,8,9,25,8,25,23,18,14,27,1,14,24,28,26,15,8,4,26,6,22,16,3,13,10,15,21,3,20,22,11,28,6,25,15,27,7,16,26,24,5,26,16,9,27,30,1,25,13,23,15,17,1,15,5,5,25,4,30,17,1,14,27,14,22,26,30,3,29,23,4,5,18,19,2,7,15,7,14,30,6,29,15,19,9,21,4,10,21,16,30,9,3,28,17,19,21,26,30,27,10,29,27,27,4,18,15,8,22,7,10,9,28,2,21,20,24,5,27,12,5,18,5,11,7,17,25,15,16,30,23,10,15,29,18,27,21,24,14,18,10,10,19,13,24,12,25,15,30,16,16,24,15,10,24,17,27,13,22,17,1,26,7,14,24,2,10,17,20,1,2,19,19,8,13,22,28,18,24,3,18,10,3,18,9,10,6,16,11,4,19,1,16,13,14,18,20,22,25,11,25,21,2,26,19,20,10,5,7,14,6,5,14,21,15,12,1,20,19,12,1,4,1,20,15,18,1,20,27,14,13,27,1,25,5,16,16,22,18,20,2,26,20,28,29,25,24,24,17,2,9,20,7,8,28,30,4,25,3,14,11,25,8,9,28,2,8,8,10,19,17,3,23,16,12,6,28,8,6,16,30,28,2,12,18,8,8,8,12,5,14,29,24,5,9,15,17,14,15,23,28,30,12,27,16,11,6,20,28,17,20,7,11,26,24,1,7,9,15,17,23,12,7,19,13,12,12,20,29,20,4,18,9,22,9,12,1,29,30,5,19,1,14,27,30,6,10,5,30,22,16,15,28,5,8,12,17,5,3,2,24,20,21,16,21,15,27,24,7,24,29,3,30,26,15,25,13,19,19,20,26,26,1,12,16,29,7,9,6,22,10,11,2,19,26,25,11,17,26,22,9,13,21,30,7,22,16,20,15,13,24,17,6,11,4,7,18,26,3,17,15,14,17,3,29,7,24,19,9,4,12,17,12,15,7,16,1,8,29,1,20,21,24,22,23,3,12,29,15,21,20,24,19,3,26,17,7,26,22,11,29,19,30,28,18,14,19,18,14,24,5,28,30,1,3,19,20,13,6,16,13,4,2,30,6,24,24,11,12,25,3,20,23,8,4,3,7,25,6,19,8,3,25,25,1,27,22,20,28,29,27,3,11,17,4,17,3,26,14,5,1,13,14,12,5,23,26,20,12,15,25,3,16,15,8,23,26,25,15,22,17,26,5,10,20,7,12,16,30,11,16,1,15,2,29,26,11,24,8,12,28,30,7,2,1,13,29,15,8,21,20,25,2,1,19,9,17,9,5,12,3,14,18,6,20,1,10,11,22,22,5,10,21,23,23,6,10,4,6,21,18,5,18,14,13,4,9,27,27,11,19,14,8,1,15,12,27,14,22,16,7,6,2,16,25,5,19,1,12,17,28,22,29,24,8,18,7,1,4,23,3,4,11,10,28,28,30,25,23,6,15,29,3,3,29,12,16,22,10,2,14,18,8,3,23,4,20,23,19,8,11,14,3,22,15,27,12,17,6,5,30,20,27,23,18,28,30,17,13,7,24,20,28,9,29,4,14,25,19,20,22,24,18,1,5,5,12,12,15,13,18,30,10,10,22,28,24,5,29,5,10,2,26,23,11,26,29,6,14,13,11,24,9,11,20,24,8,18,4,17,26,19,25,23,12,15,26,21,5,25,13,27,28,17,22,7,20,16,13,7,24,13,19,8,5,2,10,24,5,10,8,28,13,17,6,10,20,21,22,9,14,12,11,14,18,25,1,29,4,28,20,6,25,9,19,4,28,12,4,29,12,27,27,4,26,3,13,5,30,21,1,18,27,6,11,18,17,6,1,30,19,18,10,1,16,28,27,23,17,24,18,3,28,3,9,24,23,15,5,5,25,11,10,10,13,7,16,29,11,13,10,7,9,18,9,7,21,6,12,14,29,11,26,6,19,24,12,10,6,12,8,23,26,29,7,16,12,17,24,10,11,23,13,19,12,1,7,27,24,15,15,29,19,9,29,11,11,25,7,3,29,24,10,27,8,24,10,30,4,18,1,24,13,5,21,11,23,23,12,29,15,8,9,19,22,24,11,21,26,15,6,15,9,11,28,23,1,14,26,16,11,30,27,28,30,14,14,25,29,12,8,24,3,16,1,15,25,1,18,24,28,5,28,8,15,1,4,8,30,5,19,1,23,23,2,9,30,3,8,26,17,16,28,6,8,6,8,5,9,15,5,11,6,17,12,6,7,7,11,13,18,24,23,13,23,27,1,19,14,3,26,16,23,9,28,15,1,10,2,11,24,13,20,13,24,15,5,2,26,16,23,29,15,8,16,30,19,27,23,14,30,15,4,28,17,17,26,8,3,22,29,16,21,28,2,23,11,25,30,16,4,21,7,28,28,3,9,14,8,11,2,3,23,26,28,27,9,18,20,3,21,22,2,6,11,5,8,13,30,21,22,20,26,10,19,14,5,9,18,21,19,26,22,15,21,8,27,6,20,16,11,9,6,21,14,8,19,26,14,28,22,3,24,22,27,16,17,16,29,6,25,8,5,16,1,4,3,7,19,23,3,5,3,29,10,27,7,13,10,27,18,12,17,15,30,16,16,23,1,18,2,22,11,24,6,7,9,15,19,12,28,13,20,14,7,14,18,4,1,11,28,19,13,11,6,6,22,8,1,4,30,8,24,8,16,26,27,26,21,1,11,18,26,10,16,19,23,23,9,24,26,2,6,29,8,7,10,27,24,21,29,14,9,18,26,27,2,12,23,9,21,15,19,19,26,7,23,13,10,21,26,10,13,9,25,5,17,16,24,22,7,3,18,14,8,16,2,5,1,19,13,17,29,24,1,10,15,29,17,5,6,23,29,9,10,18,22,22,16,14,26,22,13,6,23,28,17,15,1,10,22,13,4,15,27,3,19,19,30,17,20,18,12,8,22,3,26,4,10,11,30,9,9,16,26,9,1,27,14,1,2,3,2,20,13,2,30,4,28,20,17,18,9,3,14,28,18,26,24,4,11,26,6,28,15,10,25,25,25,5,16,12,1,14,15,13,1,8,15,6,7,28,30,1,27,23,3,11,11,21,7,26,8,9,9,6,25,1,28,3,5,17,22,20,19,23,19,10,27,29,22,30,7,25,18,10,11,26,23,2,11,27,8,10,15,8,13,16,18,24,2,9,14,28,30,10,14,26,28,28,7,10,4,30,20,22,22,1,30,13,1,29,21,22,6,29,9,30,11,9,15,30,17,28,3,9,17,17,12,15,2,1,21,22,28,13,7,24,21,21,12,9,2,29,3,25,28,1,13,6,13,9,28,6,3,2,8,20,24,5,16,19,5,5,30,19,8,30,20,25,7,19,5,2,18,7,5,11,11,26,5,12,16,20,26,25,15,1,17,5,11,21,30,16,22,22,17,6,15,25,4,11,18,7,1,6,8,10,25,20,7,30,21,18,16,3,28,20,9,7,9,9,29,13,22,27,16,14,11,12,15,14,19,26,12,5,3,18,17,2,7,5,14,21,27,4,5,16,7,12,23,26,30,9,13,9,26,22,28,19,7,11,11,29,26,29,11,12,18,18,21,26,10,4,19,26,12,24,24,1,8,29,30,25,8,28,8,25,1,6,22,9,8,9,30,17,16,1,27,28,26,17,5,19,22,3,22,2,1,23,23,9,22,3,20,26,26,18,7,26,3,30,30,4,9,22,22,3,16,10,11,30,2,20,1,20,7,16,1,11,7,10,9,28,7,28,15,1,22,16,8,2,27,26,14,21,10,25,4,12,22,9,30,22,17,6,25,5,1,20,8,10,15,16,7,27,18,4,6,4,29,7,20,17,17,24,1,26,6,19,18,11,3,14,25,22,7,29,3,9,30,18,30,13,28,16,15,25,29,24,22,15,12,11,7,27,24,2,26,18,6,3,11,4,29,2,12,5,24,26,15,19,9,26,19,4,25,12,19,1,7,2,17,26,28,4,27,15,2,17,10,11,16,4,18,7,9,6,26,20,27,4,11,3,13,23,23,19,1,18,18,26,17,27,6,4,18,26,18,22,19,25,3,9,4,23,10,23,25,5,20,19,11,4,7,30,17,27,10,5,21,18,27,5,18,24,21,8,4,7,10,14,11,7,20,21,13,20,13,8,27,18,6,20,11,24,19,7,13,19,21,24,16,10,6,10,17,17,18,28,24,16,26,10,13,5,29,23,25,24,11,24,11,13,15,9,26,30,28,30,12,28,16,15,17,10,6,5,21,4,20,19,1,1,22,9,1,28,5,15,5,27,21,20,25,23,20,20,8,11,9,22,2,1,20,15,21,28,26,25,22,29,4,19,11,10,3,26,27,8,17,12,24,22,30,11,5,5,28,11,11,1,5,18,19,17,30,21,1,21,4,13,26,21,21,24,8,10,6,1,12,22,4,17,24,22,24,22,20,12,14,15,10,15,26,20,19,11,6,21,24,25,20,19,5,9,17,14,9,7,27,20,2,27,20,26,8,4,1,23,11,5,10,20,13,24,28,23,22,8,27,10,29,6,16,26,2,25,13,2,16,5,9,30,17,14,28,24,19,9,3,9,10,25,4,11,3,24,14,8,4,9,5,29,1,15,8,14,1,10,24,27,14,16,11,17,24,8,13,1,29,19,7,13,12,10,1,8,13,17,20,16,29,5,11,3,22,21,5,24,23,17,20,1,24,18,15,3,19,15,22,19,8,28,22,17,1,17,16,1,17,4,2,9,16,30,3,30,3,29,27,13,10,16,16,3,7,14,24,17,20,19,24,19,13,17,2,2,8,3,7,15,16,10,27,11,11,17,23,4,5,29,26,8,24,19,5,2,24,1,27,3,26,30,22,13,17,3,20,20,21,14,27,28,4,30,2,23,23,13,30,15,25,3,26,11,22,5,17,9,30,29,1,5,10,30,28,18,12,5,7,7,30,27,18,18,27,25,26,13,8,5,17,17,22,16,4,6,2,14,11,16,14,4,27,1,30,24,21,22,22,17,16,29,10,2,12,30,15,20,28,5,10,21,28,10,7,11,6,27,20,30,2,7,17,13,7,3,7,26,12,7,2,18,19,3,11,12,8,14,27,24,3,15,2,21,14,24,11,8,8,6,22,28,15,14,16,13,17,24,8,22,24,30,2,19,16,25,16,29,25,4,13,25,5,27,18,22,29,5,6,10,10,10,25,19,11,1,7,23,8,17,8,19,22,29,17,23,2,14,3,12,3,21,11,21,7,10,5,23,10,21,10,24,21,26,13,28,12,23,4,21,29,26,5,5,18,8,30,15,29,16,12,27,16,14,23,26,14,19,7,4,29,8,14,7,2,10,9,2,5,20,28,17,4,14,2,22,24,22,23,6,16,2,3,16,16,5,15,14,8,20,14,22,29,14,9,16,20,26,18,22,2,22,27,1,27,10,5,17,19,26,26,12,4,29,3,19,25,11,3,26,28,11,16,10,6,23,28,22,27,15,20,16,3,30,12,29,5,30,18,10,1,24,9,17,25,11,20,28,14,15,15,4,29,23,28,12,14,13,25,7,14,22,23,13,22,7,30,25,17,6,12,1,3,23,7,7,25,12,15,19,18,19,28,27,1,28,21,8,2,12,23,8,21,6,25,10,20,7,29,10,18,24,18,8,24,28,11,3,18,30,22,9,23,13,28,26,23,16,16,4,19,24,26,21,20,1,5,3,3,5,1,19,13,24,23,6,13,29,5,24,28,6,23,23,10,9,22,26,20,4,21,17,18,5,30,16,8,3,25,13,1,19,18,17,29,19,20,26,22,11,26,11,2,27,20,13,19,10,5,19,27,21,26,1,23,1,15,24,9,16,3,26,25,19,16,10,21,19,18,15,30,22,26,6,10,11,3,22,15,28,25,15,14,18,28,3,14,26,23,19,30,14,8,25,15,3,28,14,11,8,11,28,24,19,20,18,26,4,20,17,29,17,23,1,3,4,17,18,30,5,10,19,23,24,19,27,22,23,13,26,25,11,9,10,20,11,1,4,30,21,15,29,4,20,25,30,6,24,27,9,19,16,19,11,23,1,30,17,9,19,30,23,9,3,11,1,11,4,23,11,5,26,5,27,25,26,28,25,6,28,23,11,10,7,24,5,15,27,4,1,11,13,23,26,3,1,16,24,18,3,19,17,7,26,23,27,29,29,29,23,8,15,10,12,17,22,10,13,27,13,22,18,3,1,30,5,5,18,4,19,29,8,15,4,3,27,14,30,17,26,23,25,2,13,11,1,11,3,2,3,19,12,18,11,10,3,25,11,2,17,14,2,23,13,25,14,15,30,26,10,17,6,18,6,17,6,25,30,3,6,14,8,26,15,5,22,15,8,4,27,1,19,17,20,23,6,26,16,7,25,14,10,6,22,7,20,26,18,27,8,24,9,25,19,18,30,23,20,16,26,28,2,8,3,21,10,16,17,25,30,21,18,7,30,27,20,26,23,30,20,27,27,12,13,12,3,26,15,18,18,18,4,8,28,18,30,10,1,13,30,15,18,11,12,21,28,14,30,25,20,5,12,8,23,12,26,19,7,11,24,24,8,9,2,27,29,20,13,30,21,29,1,4,5,26,9,1,15,29,10,7,23,7,6,10,25,30,5,28,27,7,17,9,22,24,4,28,27,28,17,13,15,2,11,16,6,15,6,14,11,2,22,12,17,7,30,19,9,5,13,26,4,11,18,17,29,25,18,9,9,28,30,29,6,23,9,8,7,16,3,25,10,6,19,16,6,8,29,14,11,10,3,4,13,9,6,19,13,1,15,25,5,20,24,30,25,26,2,27,14,6,10,26,6,2,9,22,5,17,29,28,21,19,3,15,26,22,9,11,3,15,7,29,19,27,4,21,9,20,10,21,17,29,30,1,6,26,14,18,21,12,1,20,29,2,4,6,17,10,20,25,28,29,20,21,5,14,20,16,27,3,29,22,30,21,19,10,20,10,19,19,11,19,18,9,24,30,27,18,3,21,7,9,10,1,23,10,3,8,26,11,16,28,5,8,28,23,16,9,27,15,9,9,7,28,20,27,30,11,28,7,6,12,1,1,10,1,4,27,22,18,20,7,24,10,24,2,25,1,18,14,10,23,10,15,18,23,7,18,14,6,15,24,5,9,18,6,18,3,30,14,18,16,25,6,12,6,30,30,15,29,17,21,28,21,19,10,13,6,1,11,2,14,12,22,25,19,25,22,29,17,3,9,12,16,22,4,2,18,4,13,13,7,22,16,9,17,5,3,27,23,20,30,11,25,8,15,7,28,23,3,28,21,29,18,22,12,23,13,29,30,16,4,4,2,25,17,17,30,20,25,10,10,21,3,13,12,1,19,29,13,9,22,24,13,1,20);
   Unique : Set;
   Set_Cur : Cursor;
   Success : Boolean;
begin
   for I in Nums'range loop
      Unique.Insert(Nums(I), Set_Cur, Success);
   end loop;
   Set_Cur := Unique.First;
   loop
      Put_Line(Item => Integer'Image(Element(Set_Cur)));
      exit when Set_Cur = Unique.Last;
      Set_Cur := Next(Set_Cur);
   end loop;
end Remove_Duplicate_Elements;
