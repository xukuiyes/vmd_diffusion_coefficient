#!/usr/bin/env wish
# diffusion_coefficient_gui.tcl --
#
# UI generated by GUI Builder Build 146 on 2012-12-15 19:13:24 from:
#    /home/toni/compile/vmd-utils/vmd_diffusion_coefficient/diffusion_coefficient_gui.ui
# This file is auto-generated.  Only the code within
#    '# BEGIN USER CODE'
#    '# END USER CODE'
# and code inside the callback subroutines will be round-tripped.
# The proc names 'ui' and 'init' are reserved.
#

package require Tk 8.4

# Declare the namespace for this dialog
namespace eval diffusion_coefficient_gui {}

# Source the ui file, which must exist
set diffusion_coefficient_gui::SCRIPTDIR [file dirname [info script]]
source [file join $diffusion_coefficient_gui::SCRIPTDIR diffusion_coefficient_gui_ui.tcl]

# BEGIN USER CODE
# ----------------------------------------
# GUI functions for computing density profiles.
# ----------------------------------------


# This code is a mess because it can be loaded back in guibuilder.
package provide diffusion_coefficient_gui 1.0

# VMD-specific stuff
set diffusion_coefficient_gui::in_vmd \
    [string length [info proc vmd_install_extension]]
if { $diffusion_coefficient_gui::in_vmd } {
    vmd_install_extension diffusion_coefficient \
	diffusion_coefficient_gui::diffusion_coefficient_tk \
	"Analysis/Diffusion Coefficient Tool"
} else {
    #  Kludge to run outside VMD
    namespace eval ::diffusion_coefficient:: {}
    array set ::diffusion_coefficient::arg {}
}

# Called right upon menu action
proc diffusion_coefficient_gui::diffusion_coefficient_tk {} {
#    puts "In diffusion_coefficient_tk"
    variable diffusion_coefficient_window
    if { [winfo exists .diffusion_coefficient] } {
	wm deiconify $diffusion_coefficient_window
    } else {
	set diffusion_coefficient_window [ toplevel ".diffusion_coefficient" ]
	wm title $diffusion_coefficient_window "Diffusion Coefficient Tool"
	diffusion_coefficient_gui::ui $diffusion_coefficient_window; # diffusion_coefficient_gui::init is now obsolete
    }
    reset_interval_button_command
    reset_lags_button_command
    return $diffusion_coefficient_window
}
# END USER CODE

# BEGIN CALLBACK CODE
# ONLY EDIT CODE INSIDE THE PROCS.

# diffusion_coefficient_gui::_checkbutton_1_command --
#
# Callback to handle _checkbutton_1 widget option -command
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_checkbutton_1_command args {}

# diffusion_coefficient_gui::_checkbutton_2_command --
#
# Callback to handle _checkbutton_2 widget option -command
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_checkbutton_2_command args {}

# diffusion_coefficient_gui::_checkbutton_3_command --
#
# Callback to handle _checkbutton_3 widget option -command
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_checkbutton_3_command args {}

# diffusion_coefficient_gui::_checkbutton_4_command --
#
# Callback to handle _checkbutton_4 widget option -command
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_checkbutton_4_command args {}

# diffusion_coefficient_gui::_entry_1_invalidcommand --
#
# Callback to handle _entry_1 widget option -invalidcommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_1_invalidcommand args {}

# diffusion_coefficient_gui::_entry_1_validatecommand --
#
# Callback to handle _entry_1 widget option -validatecommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_1_validatecommand args {}

# diffusion_coefficient_gui::_entry_1_xscrollcommand --
#
# Callback to handle _entry_1 widget option -xscrollcommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_1_xscrollcommand args {}

# diffusion_coefficient_gui::_entry_2_invalidcommand --
#
# Callback to handle _entry_2 widget option -invalidcommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_2_invalidcommand args {}

# diffusion_coefficient_gui::_entry_2_validatecommand --
#
# Callback to handle _entry_2 widget option -validatecommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_2_validatecommand args {}

# diffusion_coefficient_gui::_entry_2_xscrollcommand --
#
# Callback to handle _entry_2 widget option -xscrollcommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_2_xscrollcommand args {}

# diffusion_coefficient_gui::_entry_3_invalidcommand --
#
# Callback to handle _entry_3 widget option -invalidcommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_3_invalidcommand args {}

# diffusion_coefficient_gui::_entry_3_validatecommand --
#
# Callback to handle _entry_3 widget option -validatecommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_3_validatecommand args {}

# diffusion_coefficient_gui::_entry_3_xscrollcommand --
#
# Callback to handle _entry_3 widget option -xscrollcommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_3_xscrollcommand args {}

# diffusion_coefficient_gui::_entry_4_invalidcommand --
#
# Callback to handle _entry_4 widget option -invalidcommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_4_invalidcommand args {}

# diffusion_coefficient_gui::_entry_4_validatecommand --
#
# Callback to handle _entry_4 widget option -validatecommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_4_validatecommand args {}

# diffusion_coefficient_gui::_entry_4_xscrollcommand --
#
# Callback to handle _entry_4 widget option -xscrollcommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_4_xscrollcommand args {}

# diffusion_coefficient_gui::_entry_5_invalidcommand --
#
# Callback to handle _entry_5 widget option -invalidcommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_5_invalidcommand args {}

# diffusion_coefficient_gui::_entry_5_validatecommand --
#
# Callback to handle _entry_5 widget option -validatecommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_5_validatecommand args {}

# diffusion_coefficient_gui::_entry_5_xscrollcommand --
#
# Callback to handle _entry_5 widget option -xscrollcommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_5_xscrollcommand args {}

# diffusion_coefficient_gui::_entry_6_invalidcommand --
#
# Callback to handle _entry_6 widget option -invalidcommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_6_invalidcommand args {}

# diffusion_coefficient_gui::_entry_6_validatecommand --
#
# Callback to handle _entry_6 widget option -validatecommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_6_validatecommand args {}

# diffusion_coefficient_gui::_entry_6_xscrollcommand --
#
# Callback to handle _entry_6 widget option -xscrollcommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_6_xscrollcommand args {}

# diffusion_coefficient_gui::_entry_7_invalidcommand --
#
# Callback to handle _entry_7 widget option -invalidcommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_7_invalidcommand args {}

# diffusion_coefficient_gui::_entry_7_validatecommand --
#
# Callback to handle _entry_7 widget option -validatecommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_7_validatecommand args {}

# diffusion_coefficient_gui::_entry_7_xscrollcommand --
#
# Callback to handle _entry_7 widget option -xscrollcommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_7_xscrollcommand args {}

# diffusion_coefficient_gui::_entry_8_invalidcommand --
#
# Callback to handle _entry_8 widget option -invalidcommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_8_invalidcommand args {}

# diffusion_coefficient_gui::_entry_8_validatecommand --
#
# Callback to handle _entry_8 widget option -validatecommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_8_validatecommand args {}

# diffusion_coefficient_gui::_entry_8_xscrollcommand --
#
# Callback to handle _entry_8 widget option -xscrollcommand
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::_entry_8_xscrollcommand args {}

# diffusion_coefficient_gui::button_help_command --
#
# Callback to handle button_help widget option -command
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::button_help_command args {
    vmd_open_url http://multiscalelab.org/utilities/DiffusionCoefficientTool
}

# diffusion_coefficient_gui::plot_d_button_command --
#
# Callback to handle plot_d_button widget option -command
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::plot_d_button_command args {
    variable ::diffusion_coefficient::arg

    set dt $arg(dt)
    set alongx $arg(alongx)
    set alongy $arg(alongy)
    set alongz $arg(alongz)

    array set msdm [diffusion_coefficient::compute_avg_msd]

    # Number of dimensions
    set ND [expr $alongx+$alongy+$alongz]
    set tlist {}; set dlist {};  set ilist {}
    foreach i [lsort -integer [array names msdm]] {
	lappend ilist $i
	lappend tlist [expr $i*$dt/1000.]
	lappend dlist [expr $msdm($i)/($i*$dt/1000.)/(2*$ND)]
    }

    set title [format "%d-dimensional diffusion coefficient" $ND]
    multiplot -x $tlist -y $dlist -ylabel "D (\uc5\ub2/ns)" -xlabel \
	"Lag time (ns)" -plot -title $title -marker point -radius 2 \
	-fillcolor "#ff0000" -color "#ff0000"


}

# diffusion_coefficient_gui::plot_msd_button_command --
#
# Callback to handle plot_msd_button widget option -command
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::plot_msd_button_command args {
    variable ::diffusion_coefficient::arg
    set dt $arg(dt)
    set alongx $arg(alongx)
    set alongy $arg(alongy)
    set alongz $arg(alongz)

    array set msdm [diffusion_coefficient::compute_avg_msd]

    set tlist {}; set dlist {};  set ilist {}
    foreach i [lsort -integer [array names msdm]] {
	lappend ilist $i
	lappend tlist [expr $i*$dt/1000.]
	lappend dlist $msdm($i)
    }

    multiplot -x $tlist -y $dlist -ylabel "MSD (\uc5\ub2)" -xlabel \
	"Lag time (ns)" -plot -title "Mean square deviation" -marker point \
	-radius 2 -fillcolor "#ff0000" -color "#ff0000"


}

# diffusion_coefficient_gui::reset_interval_button_command --
#
# Callback to handle reset_interval_button widget option -command
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::reset_interval_button_command args {
    ::diffusion_coefficient::set_default_interval
}

# diffusion_coefficient_gui::reset_lags_button_command --
#
# Callback to handle reset_lags_button widget option -command
#
# ARGS:
#    <NONE>
#
proc diffusion_coefficient_gui::reset_lags_button_command args {
    ::diffusion_coefficient::set_default_lags
}

# END CALLBACK CODE

# diffusion_coefficient_gui::init --
#
#   Call the optional userinit and initialize the dialog.
#   DO NOT EDIT THIS PROCEDURE.
#
# Arguments:
#   root   the root window to load this dialog into
#
# Results:
#   dialog will be created, or a background error will be thrown
#
proc diffusion_coefficient_gui::init {root args} {
    # Catch this in case the user didn't define it
    catch {diffusion_coefficient_gui::userinit}
    if {[info exists embed_args]} {
	# we are running in the plugin
	diffusion_coefficient_gui::ui $root
    } elseif {$::argv0 == [info script]} {
	# we are running in stand-alone mode
	wm title $root diffusion_coefficient_gui
	if {[catch {
	    # Create the UI
	    diffusion_coefficient_gui::ui  $root
	} err]} {
	    bgerror $err ; exit 1
	}
    }
    catch {diffusion_coefficient_gui::run $root}
}
diffusion_coefficient_gui::init .

