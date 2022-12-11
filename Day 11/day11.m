## Day 11
##11.1

monkey_inventory = load('d11in.mat');
monkey_activity = zeros(1,size(monkey_inventory,2));



for j= 1:20 #rounds


for k=0:7
  [monkey_inventory, monkey_activity] = monkeyturn (k, monkey_inventory, monkey_activity);
endfor

total_monkey_business = (sort(monkey_activity,'descend')(1)*(sort(monkey_activity,'descend')(2)))

## 11.2

monkey_inventory = load('d11in.mat');
monkey_activity = zeros(1,size(monkey_inventory,2));

for j= 1:100 #rounds
  for l = 1:100

      for k=0:7
        [monkey_inventory, monkey_activity] = monkeyturn_w (k, monkey_inventory, monkey_activity);
      endfor
      rowsallzeros = all(monkey_inventory==0,2);
      monkey_inventory = monkey_inventory(~rowsallzeros,:); #cleanse matrix early to prevent it from getting very big
  endfor
j #Track progress
endfor

total_monkey_business_w = (sort(monkey_activity,'descend')(1)*(sort(monkey_activity,'descend')(2)))
