with calc_employees as (
    select
    date_part(year, current_date) - date_part(year, birth_date) age,
    date_part(year, current_date) - date_part(year,hire_date) lengthofservice,
    firt_name || ' ' || last_name name, *
    from {{source('sources','employees')}}
)
slect * from calc_employees