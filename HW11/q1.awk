NR == 1 {
    printf "%-5s %-5s %-4s %-4s %-4s %-4s %-5s\n", $1, $2, $3, $4, $5, "총점", "평균"
    next
}
{
    sum = $3 + $4 + $5
    avg = sum / 3
    printf "%-5s %-5s %-5d %-5d %-5d %-5d %.1f\n", $1, $2, $3, $4, $5, sum, avg
    sum_kor += $3
    sum_eng += $4
    sum_math += $5
    count++
}
END {
    if (count > 0) {
        printf "%-11s %.1f  %.1f  %.1f\n", "", sum_kor/count, sum_eng/count, sum_math/count
    }
}
