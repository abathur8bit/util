#!/bin/bash
##############################################################################
# By Lee Patterson https://github.com/abathur8bit/util 11/05/2017
# 
# Copyright 2018 Lee Patterson
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
# Usage: makeicons source.png prefix
# 	source.png 	= Source image, which is 1024x1024 or larger.
# 	prefix 		= The prefix of output filename. For example "BB" will make 
#				  filenames like "BB-macOS512@2x.png"
#
# Example: makeicons.sh DropH20IconImage1024.png DropH20
# 	Produces DropH20-macOS_512.png as well as others listed below.
#

# $@ - all command line params
# $1 - first param
# $# - number of command line params

#Check if file doesn't exists, remove the "!" to make it check for the file
if [ $# != 2 ]; then
	echo ""
	echo "Usage: makeicons.sh source.png destprefix"
	echo ""
	echo "source.png = Source image, which is 1024x1024 or larger."
	echo "prefix     = The prefix of output filename. For example 'BB' will make"
	echo "             filenames like BB-macOS_512@2x.png"
	echo ""
	echo "Example: makeicons.sh ballicon-macos.png BB"
	echo "Producdes BB-macOS_512.png as well as others."
	echo ""
else
	echo Source image: $1, destination images will be $2-macOS* and $2-iOS*

	magick $1 -resize 1024 $2-macOS_512@2x.png
	magick $1 -resize 512  $2-macOS_512.png
	magick $1 -resize 512  $2-macOS_256@2x.png
	magick $1 -resize 256  $2-macOS_256.png
	magick $1 -resize 256  $2-macOS_128@2x.png
	magick $1 -resize 128  $2-macOS_128.png
	magick $1 -resize 64   $2-macOS_32@2x.png
	magick $1 -resize 32   $2-macOS_32.png
	magick $1 -resize 32   $2-macOS_16@2x.png
	magick $1 -resize 16   $2-macOS_16.png
	
	magick $1 -resize 1024 $2-iOS_1024@1x.png
	magick $1 -resize 20   $2-iOS_20.png
	magick $1 -resize 40   $2-iOS_20@2x.png
	magick $1 -resize 60   $2-iOS_20@3x.png
	magick $1 -resize 29   $2-iOS_29.png
	magick $1 -resize 58   $2-iOS_29@2x.png
	magick $1 -resize 87   $2-iOS_29@3x.png
	magick $1 -resize 40   $2-iOS_40.png
	magick $1 -resize 80   $2-iOS_40@2x.png
	magick $1 -resize 120  $2-iOS_40@3x.png
	magick $1 -resize 120  $2-iOS_60@2x.png
	magick $1 -resize 180  $2-iOS_60@3x.png
	magick $1 -resize 76   $2-iOS_76.png
	magick $1 -resize 152  $2-iOS_76@2x.png
	magick $1 -resize 167  $2-iOS_83.5@2x.png

    magick $1 -resize 216  $2-Watch_44mm@2x.png
    magick $1 -resize 196  $2-Watch_40mm@2x.png
    magick $1 -resize 172  $2-Watch_38mm@2x.png
    magick $1 -resize 100  $2-Watch_44mm50pt@2x.png
    magick $1 -resize 88   $2-Watch_40mm44pt@2x.png
    magick $1 -resize 80   $2-Watch_38mm40pt@2x.png
    magick $1 -resize 58   $2-Watch_44mm29pt@2x.png
    magick $1 -resize 87   $2-Watch_44mm29pt@3x.png
    magick $1 -resize 55   $2-Watch_42mm27.5pt@2x.png
    magick $1 -resize 48   $2-Watch_38mm24pt@2x.png

fi
