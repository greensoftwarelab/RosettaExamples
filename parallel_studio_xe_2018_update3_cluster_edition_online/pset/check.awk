# Copyright 2006-2018 Intel Corporation.
#
# This software and the related documents are Intel copyrighted materials,
# and your use of them is governed by the express license under which they
# were provided to you (License). Unless the License provides otherwise,
# you may not use, modify, copy, publish, distribute, disclose or transmit
# this software or the related documents without Intel's prior written
# permission.
#
# This software and the related documents are provided as is, with no express
# or implied warranties, other than those that are expressly stated in the
# License.

# Validates data in ini files. note it attempts to validate file names
# by regex because there is no other way to validate non-existent ones.

BEGIN {
    allokflag = 1;

    # try this out to see if you can break it
    # I used a regex because the user may not be running as root. in any
    # case we would not want to allow some paths even if they can be
    # created.
    filepat = "^/[a-zA-Z0-9 ._/-]+$";
    # we don't use --posix for compatibility reasons
    snpat = "^[a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9]-[a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9]$" ;
    lspat = "^[0-9]+@[a-zA-Z0-9._-]+$";

    # it would not be very hard to read the data from a file rather than
    # hardwire it as here.

    # this might be useful, if not remove it.

    # exclude table
    exclude["NO_VALIDATE"] = 1;  # example

    # validation data

    # section data is made up of "name1:val1:val2..." blocks separated
    # by ";". value strings are evaluated as regex, and may be fancier
    # than what is shown, for example [Yy][Ee][Ss]. regex can allow
    # arbitrary values, for example TEXT might be "[A-Za-z][A-Za-z_0-9]+"

	sections["silent"] = sections["silent"] "ACCEPT_EULA:^accept$:^decline$";
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "CONTINUE_WITH_OPTIONAL_ERROR:^yes$:^no$";
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "PSET_INSTALL_DIR:^/opt/intel$:^$:"filepat;
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "CONTINUE_WITH_INSTALLDIR_OVERWRITE:^yes$:^no$";
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "COMPONENTS:^ALL$:^DEFAULTS$:^$:"anythingpat;
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "PSET_MODE:^install$:^repair$:^uninstall$";
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "NONRPM_DB_DIR:^$:"filepat;
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "ACTIVATION_SERIAL_NUMBER:^$:"snpat;
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "ACTIVATION_LICENSE_FILE:^$:"lspat":"filepat;
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "ACTIVATION_TYPE:^exist_lic$:^license_server$:^license_file$:^trial_lic$:^serial_number$";
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "AMPLIFIER_SAMPLING_DRIVER_INSTALL_TYPE:^build$:^kit$";
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "AMPLIFIER_DRIVER_ACCESS_GROUP:^$:"anythingpat":^vtune$";
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "AMPLIFIER_DRIVER_PERMISSIONS:^$:"anythingpat":^666$";
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "AMPLIFIER_LOAD_DRIVER:^yes$:^no$";
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "AMPLIFIER_C_COMPILER:^$:"filepat":^auto$:^none$";
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "AMPLIFIER_KERNEL_SRC_DIR:^$:"filepat":^auto$:^none$";
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "AMPLIFIER_MAKE_COMMAND:^$:"filepat":^auto$:^none$";
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "AMPLIFIER_INSTALL_BOOT_SCRIPT:^yes$:^no$";
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "AMPLIFIER_DRIVER_PER_USER_MODE:^yes$:^no$";
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "CLUSTER_INSTALL_REMOTE:^yes$:^no$";
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "CLUSTER_INSTALL_TEMP:^$:"filepat;
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "CLUSTER_INSTALL_MACHINES_FILE:^$:"filepat;
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "INTEL_SW_IMPROVEMENT_PROGRAM_CONSENT:^yes$:^no$";
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "SIGNING_ENABLED:^yes$:^no$";
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "ARCH_SELECTED:^IA32$:^INTEL64$:^ALL$";
	sections["silent"] = sections["silent"] ";";
#for backward compatibility
	sections["silent"] = sections["silent"] "INSTALL_MODE:^RPM$:^NONRPM$";
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "download_only:^yes$";
	sections["silent"] = sections["silent"] ";";
	sections["silent"] = sections["silent"] "download_dir:^$:"filepat;
	sections["silent"] = sections["silent"] ";";
}

/^[A-Za-z][-A-Za-z_0-9]*=.*/ {     # name=value pair
    sub(/^[ \t]+/,"", $0);  # remove leading whitespaces
    sub(/[ \t]+$/,"", $0);  # remove trailing whitespaces
    if($0 ~ /..*[ \t].*/)   # check for space
    {
        if(split($0,nameval,"=") == 2)
        {
            name  = nameval[1];
            value = nameval[2];
            if(!validate(name,value))
            {
                allokflag = 0;
            }
        }
    }
    else
    {
        if(split($1,nameval,"=") == 2)
        {
            name  = nameval[1];
            value = nameval[2];

            if(!validate(name,value))
            {
                allokflag = 0;
            }
        }
    }

    next;
}

END {
    if(!allokflag)
    {
        print FILENAME " has errors";
        exit 1
    }
    else
    {
        exit 0
    }
}

function validate(name,value)
{
    if(name in exclude)  # skip it
    {
        return 1;
    }

    namefound = 0;

    sectiondata = sections["silent"];

    if((cnt = split(sectiondata,arr,";")))
    {
        for(i=1;i<=cnt;++i)
        {
            # split the name and possibly multiple values
            if((num = split(arr[i],list,":")))
            {
                # the first one is the name
                if(list[1] == name)
                {
                    namefound = 1;
                    # the rest are values
                    for(j=2;j<=num;++j)
                    {
                        # stop looking if we match
                        if(value ~ list[j])
                        {
                            return 1;
                        }
                    }
                }
            }
        }
    }

    if(namefound)
    {
        printf("\"%s\" is not a valid value for \"%s\"\n",value,name);
    }
    else
    {
        printf("Name \"%s\" is not valid\n",name);
    }

    return 0;
}