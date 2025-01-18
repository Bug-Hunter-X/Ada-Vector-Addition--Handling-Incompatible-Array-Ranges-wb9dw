```ada
function Add_Vectors (A, B : Vector) return Vector is
   Result : Vector (A'Range) := (others => 0); -- Initialize Result vector
begin
   if A'Range /= B'Range then
      raise Constraint_Error with "Vectors must have the same range";
   end if;
   for I in A'Range loop
      Result (I) := A (I) + B (I); 
   end loop;
   return Result;
end Add_Vectors;

procedure Main is
A, B, C : Vector (1..3) := (1, 2, 3), (4, 5, 6), (0,0,0); -- Initialize vectors
begin
   C := Add_Vectors(A,B);   
   --Print the vector C (Implementation not included for brevity)
exception
   when Constraint_Error =>
      Put_Line("Error: Vectors have incompatible ranges.");
end Main;

subtype Vector is array (Positive range <>) of Integer;
```