def sacados_bruteforce(items, target)
    nb_items = items.length
    max_dec = 2 ** nb_items
    best_sacs = []
    best_target = 0
    for sac_dec in (0..max_dec)
        sac_bin = sac_dec.to_s(2)
        if (sac_bin.length < nb_items)
            (nb_items - sac_bin.length).times do
                sac_bin.insert(0, '0')
            end
        end
        current_sac = []
        current_target = 0
        for digit in (0..nb_items-1)
            if (digit == 1)
                current_sac.push(items[digit])
                current_target += itmes[digit]["value"]
            end
        end
        if (current_target <= target)
            if (current_target > best_target)
                best_sacs.clear
                best_sacs.push(current_sac)
                best_target = current_target
            elsif (current_target == best_target)
                best_sacs.push(current_sac)
            end
        end
    end
    return best_sacs
end