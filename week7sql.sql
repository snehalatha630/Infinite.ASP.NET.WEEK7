Alter procedure InsertPositionDetails
    @cPositionCode char(4), @vDescription varchar(35),@iBudgetedStrength int, @siYear smallint,@iCurrentStrength int
as
begin
    Insert Position (cPositionCode, vDescription,iBudgetedStrength, siYear,iCurrentStrength) values 
    (@cPositionCode, @vDescription,@iBudgetedStrength, @siYear,@iCurrentStrength)
end
select*from Position
exec InsertPositionDetails 'p001','Description Example','90','2023','92'