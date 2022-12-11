function [monkey_inventory, monkey_activity] = monkeyturn (monkeynumber, monkey_inventory_old, monkey_activity)

monkey_inventory= monkey_inventory_old;


  if monkeynumber == 0


    for i=1:size(monkey_inventory,1)
      if monkey_inventory(i,monkeynumber+1) ~= 0
        worry = monkey_inventory(i,monkeynumber+1)*19; #Operation
        worry = floor(worry/3);
        monkey_inventory = [monkey_inventory;zeros(1,size(monkey_inventory_old,2))];

        if mod(worry,7) == 0
          monkey_inventory(end,3) = worry; #Throw to monkey 2
          monkey_inventory(i,monkeynumber+1) = 0; #Remove from monkey 0's inventory
        else monkey_inventory(end,4) = worry; #Throw to monkey 3
          monkey_inventory(i,monkeynumber+1) = 0; #Remove from monkey 0's inventory
        endif

        monkey_activity(monkeynumber+1) = monkey_activity(monkeynumber+1) + 1;
      endif
    endfor



     elseif monkeynumber == 1
        for i=1:size(monkey_inventory_old,1)
          if monkey_inventory_old(i,monkeynumber+1) ~= 0
            worry = monkey_inventory_old(i,monkeynumber+1)+1; #Operation
            worry = floor(worry/3);
            monkey_inventory = [monkey_inventory;zeros(1,size(monkey_inventory_old,2))];

            if mod(worry,19) == 0
              monkey_inventory(end,5) = worry; #Throw to monkey 4
              monkey_inventory(i,monkeynumber+1) = 0; #Remove from monkey 1's inventory
            else monkey_inventory(end,7) = worry; #Throw to monkey 6
              monkey_inventory(i,monkeynumber+1) = 0; #Remove from monkey 1's inventory
            endif

            monkey_activity(monkeynumber+1) = monkey_activity(monkeynumber+1) + 1;
          endif
        endfor



     elseif monkeynumber == 2
        for i=1:size(monkey_inventory_old,1)
          if monkey_inventory_old(i,monkeynumber+1) ~= 0
            worry = monkey_inventory_old(i,monkeynumber+1)+6; #Operation
            worry = floor(worry/3);
            monkey_inventory = [monkey_inventory;zeros(1,size(monkey_inventory_old,2))];

            if mod(worry,5) == 0 #Test
              monkey_inventory(end,8) = worry; #Throw to monkey 7
              monkey_inventory(i,monkeynumber+1) = 0; #Remove from monkey 2's inventory
            else monkey_inventory(end,6) = worry; #Throw to monkey 5
              monkey_inventory(i,monkeynumber+1) = 0; #Remove from monkey 2's inventory
            endif

            monkey_activity(monkeynumber+1) = monkey_activity(monkeynumber+1) + 1;
          endif
        endfor




     elseif monkeynumber == 3
        for i=1:size(monkey_inventory,1)
      if monkey_inventory(i,monkeynumber+1) ~= 0
        worry = monkey_inventory(i,monkeynumber+1)+5; #Operation
        worry = floor(worry/3);
        monkey_inventory = [monkey_inventory;zeros(1,size(monkey_inventory_old,2))];

        if mod(worry,11) == 0
          monkey_inventory(end,6) = worry; #Throw to monkey 5
          monkey_inventory(i,monkeynumber+1) = 0; #Remove from monkey 3's inventory
        else monkey_inventory(end,3) = worry; #Throw to monkey 3
          monkey_inventory(i,monkeynumber+1) = 0; #Remove from monkey 3's inventory
        endif

        monkey_activity(monkeynumber+1) = monkey_activity(monkeynumber+1) + 1;
      endif
    endfor




     elseif monkeynumber == 4
        for i=1:size(monkey_inventory_old,1)
          if monkey_inventory_old(i,monkeynumber+1) ~= 0
            worry = monkey_inventory_old(i,monkeynumber+1)^2; #Operation
            worry = floor(worry/3);
            monkey_inventory = [monkey_inventory;zeros(1,size(monkey_inventory_old,2))];

            if mod(worry,17) == 0
              monkey_inventory(end,1) = worry; #Throw to monkey 0
              monkey_inventory(i,monkeynumber+1) = 0; #Remove from monkey 4's inventory
            else monkey_inventory(end,4) = worry; #Throw to monkey 3
              monkey_inventory(i,monkeynumber+1) = 0; #Remove from monkey 4's inventory
            endif

            monkey_activity(monkeynumber+1) = monkey_activity(monkeynumber+1) + 1;
          endif
        endfor


     elseif monkeynumber == 5
        for i=1:size(monkey_inventory_old,1)
          if monkey_inventory_old(i,monkeynumber+1) ~= 0
            worry = monkey_inventory_old(i,monkeynumber+1)+7; #Operation
            worry = floor(worry/3);
            monkey_inventory = [monkey_inventory;zeros(1,size(monkey_inventory_old,2))];

            if mod(worry,13) == 0
              monkey_inventory(end,2) = worry; #Throw to monkey 1
              monkey_inventory(i,monkeynumber+1) = 0; #Remove from monkey 5's inventory
            else monkey_inventory(end,8) = worry; #Throw to monkey 7
              monkey_inventory(i,monkeynumber+1) = 0; #Remove from monkey 5's inventory
            endif

            monkey_activity(monkeynumber+1) = monkey_activity(monkeynumber+1) + 1;
          endif
        endfor


     elseif monkeynumber == 6
        for i=1:size(monkey_inventory_old,1)
          if monkey_inventory_old(i,monkeynumber+1) ~= 0
            worry = monkey_inventory_old(i,monkeynumber+1)*7; #Operation
            worry = floor(worry/3);
            monkey_inventory = [monkey_inventory;zeros(1,size(monkey_inventory_old,2))];

            if mod(worry,2) == 0
              monkey_inventory(end,1) = worry; #Throw to monkey 0
              monkey_inventory(i,monkeynumber+1) = 0; #Remove from monkey 6's inventory
            else monkey_inventory(end,5) = worry; #Throw to monkey 4
              monkey_inventory(i,monkeynumber+1) = 0; #Remove from monkey 6's inventory
            endif

            monkey_activity(monkeynumber+1) = monkey_activity(monkeynumber+1) + 1;
          endif
        endfor


     elseif monkeynumber == 7
        for i=1:size(monkey_inventory_old,1)
          if monkey_inventory_old(i,monkeynumber+1) ~= 0
            worry = monkey_inventory_old(i,monkeynumber+1)+2; #Operation
            worry = floor(worry/3);
            monkey_inventory = [monkey_inventory;zeros(1,size(monkey_inventory_old,2))];

            if mod(worry,3) == 0
              monkey_inventory(end,2) = worry; #Throw to monkey 1
              monkey_inventory(i,monkeynumber+1) = 0; #Remove from monkey 7's inventory
            else monkey_inventory(end,7) = worry; #Throw to monkey 7
              monkey_inventory(i,monkeynumber+1) = 0; #Remove from monkey 7's inventory
            endif

            monkey_activity(monkeynumber+1) = monkey_activity(monkeynumber+1) + 1;
          endif
        endfor



  endif


endfunction

