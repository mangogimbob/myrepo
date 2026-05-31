NR == 1 {
    printf "%s 총점 평균\n", $0
    next
}
{
    sum = 0
    printf "%s %s ", $1, $2
   
    for (i = 3; i <= NF; i++) {
        printf "%s ", $i
        sum += $i
        col_sum[i] += $i  }
    
    avg = sum / (NF - 2)
    printf "%d %.1f\n", sum, avg
    count++
}
END {
    if (count > 0) {
        printf "%-11s", " "
        for (i = 3; i <= length(col_sum) + 2; i++) {
            printf "%.1f ", col_sum[i] / count
        }
        printf "\n"
    }
}
