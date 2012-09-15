#!/usr/bin/python

from sys import stdin

def convert_point(lon_str, lat_str):
    lon = round(float(lon_str), 3)
    lat = round(float(lat_str), 3)
    return (lon, lat)


def main():
    lines = stdin.readlines()

    print "["

    for l in lines:
        (lon_str, lat_str, _) = l.split(',')
        (lon, lat) = convert_point(lon_str, lat_str)
        print "\t[%.3f, %.3f]," %(lat, lon)

    print "]"


if __name__ == '__main__':
    main()
