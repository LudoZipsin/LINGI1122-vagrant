/*
** Copyright (C) 2010 Jose Vander Meulen <jose.vandermeulen@gmail.com>
**
** This program is free software; you can redistribute it and/or modify
** it under the terms of the GNU General Public License as published by
** the Free Software Foundation; either version 2 of the License, or
** (at your option) any later version.
**
** This program is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
** GNU General Public License for more details.
**
** You should have received a copy of the GNU General Public License
** along with this program; if not, write to the Free Software
** Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
*/

public class HelloWorld {

	//@ensures \result==1160;
    public static int hello() {
        int result = 0;
        result += 'h';
        result += 'e';
        result += 'l' * 2;
        result += 'o';
        result += ',';
        result += ' ';
        result += 'w';
        result += 'o';
        result += 'r';
        result += 'l';
        result += 'd';
        return result;
    }    
}

