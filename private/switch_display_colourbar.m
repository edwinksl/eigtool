function ps_data = switch_display_colourbar(fig,cax,this_ver,ps_data)

% function ps_data = switch_display_colourbar(fig,cax,this_ver,ps_data)
%
% Function called when the 'Display Colourbar' menu option is
% chosen.

% Version 2.4.1 (Wed Nov 19 21:54:21 EST 2014)
% Copyright (c) 2002-2014, The Chancellor, Masters and Scholars
% of the University of Oxford, and the EigTool Developers. All rights reserved.
% EigTool is maintained on GitHub:  https://github.com/eigtool
% Report bugs/request features at https://github.com/eigtool/eigtool/issues

      mnu_itm_h = findobj(fig,'Tag','DisplayColourbar');
      cur_state = get(mnu_itm_h,'checked');
      if strcmp(cur_state,'off'),
        set(mnu_itm_h,'checked','on');
        grow_main_axes(fig,0);
      else
        set(mnu_itm_h,'checked','off');
        grow_main_axes(fig,1);
      end;
