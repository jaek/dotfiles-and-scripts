#list by date
expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n 20
#list of non base/base-devl
comm -23 <(pacman -Qeq | sort) <(pacman -Qgq base base-devel | sort)
