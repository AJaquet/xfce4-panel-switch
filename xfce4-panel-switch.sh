#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# xfcr4-panel-switch.sh


# Copyright (C) 2016 Adam Jaquet (adam-jaquet.com)
# Deutschland, 45711 Datteln
#
# Dieses Programm ist freie Software. Sie können es unter den
# Bedingungen der GNU General Public License, wie von der Free Software
# Foundation veröffentlicht, weitergeben und/oder modifizieren, gemäß
# Version 3 der Lizenz.
# Die Veröffentlichung dieses Programms erfolgt in der Hoffnung, daß es
# Ihnen von Nutzen sein wird, aber OHNE IRGENDEINE GARANTIE, sogar ohne
# die implizite Garantie der MARKTREIFE oder der VERWENDBARKEIT FÜR
# EINEN BESTIMMTEN ZWECK. Details finden Sie in der
# GNU General Public License. Siehe <http://www.gnu.org/licenses/>.

##
# Prozessliste aufrufen und Augabe an grep uebergeben
# anschliessend ueberpruefen ob der Ausdruck 'xfce-panel' vorhanden ist
#

_u=$USER

echo "search for 'xfce4-panel' from User: $_u \n"

if ps -u $_u | grep 'xfce4-panel' &>/dev/null
  then
    # Panel beenden
    if xfce4-panel -q &>/dev/null
      then echo "Panel quit ..."
      else echo "Error at quit!"
    fi
  else
    # Panel starten
    if xfce4-panel & &>/dev/null
      then echo "Panel starts ..."
      else echo "Panel not found! Errorcode: $?"
    fi
fi


