##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "ModLogAn"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-11-11
]
version "0.1"
description "Modlogan is a modular logfile analyzer which is currently able to parse ftp-, webserver and squid logs."
website "http://modlogan.com/"

# Google results as at 2012-011-11 #
# 339 for "Output generated by modlogan"

# Dorks #
dorks [
'"Output generated by modlogan"'
]



# Matches #
matches [

# Stylesheet
{ :text=>'<link rel="stylesheet" href="modlogan.css" type="text/css" />' },
{ :text=>'<LINK REL=STYLESHEET HREF="modlogan.css" type="text/css"></HEAD>' },

# Version Detection # Generated by footer
{ :version=>/Output generated by <a href="http:\/\/www\.(modlogan\.org|kneschke\.de\/projekte\/modlogan\/)">modlogan ([^\s^<]+)<\/a>/, :offset=>1 },

]

end

