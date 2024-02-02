#r "C:\Program Files\workspacer\workspacer.Shared.dll"
#r "C:\Program Files\workspacer\plugins\workspacer.Bar\workspacer.Bar.dll"
#r "C:\Program Files\workspacer\plugins\workspacer.ActionMenu\workspacer.ActionMenu.dll"
#r "C:\Program Files\workspacer\plugins\workspacer.FocusIndicator\workspacer.FocusIndicator.dll"

using System;
using workspacer;
using workspacer.Bar;
using workspacer.ActionMenu;
using workspacer.FocusIndicator;

Action<IConfigContext> doConfig = (context) =>
{
    // Uncomment to switch update branch (or to disable updates)
    //context.Branch = Branch.None;

    // get rid of time on menu bar
    context.AddBar(new BarPluginConfig() {
        BarTitle = "workspacer.Bar",
        FontSize = 14,
        FontName = "Agave Nerd Font Mono",
        RightWidgets = () => new IBarWidget[] {},
    });

    context.AddFocusIndicator();
    var actionMenu = context.AddActionMenu();

    context.WorkspaceContainer.CreateWorkspaces("1", "2", "3", "4", "5");
    context.CanMinimizeWindows = true; // false by default

    // get rid of alt leftarrow switching workspaces
    KeyModifiers mod = KeyModifiers.Alt;
    context.Keybinds.Unsubscribe(mod, Keys.Left);
    context.Keybinds.Unsubscribe(mod, Keys.Right);
    
};
return doConfig;
