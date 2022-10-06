program DateTime;

{определить высокосность года}

{кол-во секунд в минуте}

{какой из 2 дней ближе к новому году}

{кол-во дней в году}

{кол-во дней во всех года}

{секунды в часах}

{был ли апокалипсис (1992, 2005, 2004)}

{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}

begin
  var year := ReadInteger('Введите год: ');
  Assert(year > 0, 'Год не может быть отрицательным!');
  PrintLn($'Год високосный: {year.Divs(4) and (year.Divs(400) or not year.Divs(100))}');
  
  PrintLn($'{newline}60 секунд в минуте');

  var (data_1, month_1, data_2, month_2) := ReadInteger4($'{newline}Введите 2 числа (число, месяц)');
  Assert((data_1 > 0) and (month_1 > 0) and (data_2 > 0) and (month_2 > 0) and (month_1 <= 12) and (month_2 <= 12) and (data_1 <= 31) and (data_2 <= 31), 'Неправильная дата!');
  if month_1 > month_2 then
    PrintLn($'{data_1} {month_1} ближе к новому году')
  else if month_1 < month_2 then
    PrintLn($'{data_2} {month_2} ближе к новому году')
  else
    PrintLn($'{max(data_2, data_1)} {month_1} ближе к новому году');
  
  //year := ReadInteger($'{newline}Введите год: ');
  //Assert(year > 0, 'Год не может быть отрицательным!');
  //PrintLn($'Дней в году: {if year.Divs(4) and (year.Divs(400)or not year.Divs(100)) then 366 else 365}');
  
  //var (year_1, year_2) := ReadInteger2($'{newline}Введите года: ');
  //Assert((year_1 > 0) and (year_2 > 0), 'Год не может быть отрицательным!');
  //var sum := 0;
  //if year_1 > year_2 then
  //  Swap(year_1, year_2);
  //for var i := year_1 to year_2 do
  //  sum += if i.Divs(4) and (i.Divs(400) or not i.Divs(100)) then 366 else 365;
  //PrintLn($'Дней в этих годах: {sum}');
  
  //var hours := ReadInteger($'{newline}Введите кол-во часов:');
  //Assert(hours >= 0, 'Кол-во часов не может быть отрицательным!');
  //PrintLn($'Секунд в часах: {hours * 3600}');
  
  //year := ReadInteger($'{newline}Введите год:');
  //Assert(year >= 0, 'Год не может быть отрицательным');
  //PrintLn(if (year = 1992) or (year = 2005) or (year = 2011) then 'В этом году был апокалипсис' else 'В этом году апокалипсис не случился')
end.