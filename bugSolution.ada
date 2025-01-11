```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1,2,3,4,5,6,7,8,9,10);
   subtype Positive is Integer range 1..10; --Restrict the range
   function Get_Value (Index : Positive) return Integer is
   begin
      return My_Arr(Index);
   end Get_Value;
begin
   for I in My_Arr'Range loop
      if I > 5 then
         Put_Line(Integer'Image(Get_Value(I)));
      end if;
   end loop;
end Example;
```