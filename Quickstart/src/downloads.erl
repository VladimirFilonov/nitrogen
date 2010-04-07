-module (downloads).
-include_lib ("nitrogen/include/wf.hrl").
-compile(export_all).
-include("grid.hrl").

main() -> #template { file="./templates/grid.html" }.

title() -> "Downloads".

layout() -> 
    #container_12 { body=[
        #grid_12 { class=header, body=common:header(downloads) },
        #grid_clear {},

        #grid_10 { alpha=true, omega=true, prefix=1, suffix=1, class=headline, body=headline() },
        #grid_clear {},

        #grid_5 { prefix=1, alpha=true, body=left(), class=pad_right },
        #grid_5 { suffix=1, omega=true, body=right() },
        #grid_clear {},

        #grid_12 { body=common:footer() }
    ]}.

headline() -> "Downloads".

left() -> 
    [
        " 
        <p>
        Select a link to the right to download the Nitrogen 2.0
        environment for your platform. Each download is a self-contained
        installation of Nitrogen that includes both Erlang and a web 
        server. (In other words, you don't need to have Erlang installed 
        to run this.)
        <p>
        You have a choice between three popular Erlang web servers:
        <p>
        <ul>
        <li>Mochiweb - Erlang HTTP server developed by Bob Ippolito/MochiMedia.</li>
        <li>Yaws - Erlang HTTP server developed by Claes \"Klacke\" Wikstrom.</li>
        <li>Inets - Lightweight HTTP server built into Erlang.
        </ul>
        <p>
        Either Mochiweb or Yaws is recommended for production
        use. Whichever one you choose is up to personal preference,
        but Inets is not recommended for running in production.
        <p>
        These packages were generated from Nitrogen source code by running 
        <b>make package_inets</b>, <b>make package_mochiweb</b>, and
        <b>make package_yaws</b>.
        <p>
        Alternatively, if you plan on contributing to the Nitrogen
        source code, you can download the source tree from GitHub.

        " 
    ].


right() ->
    [
        #p{},
        #panel { class=platform, body=[
            #panel { class=logo, body=[
                #image { image="/images/downloads/documentation.png" }
            ]},
            #span { class=title, text="Nitrogen Documentation" },
            #link { class=link, url="#", text="View Online" },
            #link { class=link, url="#", text="Download .zip file" }
        ]},

        #panel { class=clear },

        #panel { class=platform, body=[
            #panel { class=logo, body=[
                #image { image="/images/downloads/erlang_logo.png" }
            ]},
            #span { class=title, text="Source Code" },
            #link { url="http://github.com/rklophaus/nitrogen/tarball/master", text="Download Nitrogen 2.0.1 source (.tar.gz)" },
            #link { url="http://github.com/rklophaus/nitrogen/tarball/master", text="Download Latest Code (.tar.gz)" },
            #link { url="http://github.com/rklophaus/nitrogen", text="Nitrogen repository on GitHub" }
        ]},

        #panel { class=clear },

        #p{},
        #panel { class=platform, body=[
            #panel { class=logo, body=[
                #image { image="/images/downloads/mac_logo.png" }
            ]},
            #span { class=title, text="Mac OSX 10.5+ Binaries" },
            #link { class=link, url="#", text="Nitrogen 2.0.1 for Mac OSX on Mochiweb" },
            #link { class=link, url="#", text="Nitrogen 2.0.1 for Mac OSX on Yaws" },
            #link { class=link, url="#", text="Nitrogen 2.0.1 for Mac OSX on Inets" }
        ]},

        #panel { class=clear },

        #panel { class=platform, body=[
            #panel { class=logo, body=[
                #image { image="/images/downloads/linux_logo_gray.png" }
            ]},
            #span { class=title, text="Linux Binaries Coming Soon" },
            #span { class=link, text="Nitrogen 2.0.1 for Linux on Mochiweb" },
            #span { class=link, text="Nitrogen 2.0.1 for Linux on Yaws" },
            #span { class=link, text="Nitrogen 2.0.1 for Linux on Inets" }
        ]},

        #panel { class=clear },

        #panel { class=platform, body=[
            #panel { class=logo, body=[
                #image { image="/images/downloads/windows_logo_gray.png" }
            ]},
            #span { class=title, text="Windows Binaries Coming Soon" },
            #span { class=link, text="Nitrogen 2.0.1 for Windows on Mochiweb" },
            #span { class=link, text="Nitrogen 2.0.1 for Windows on Yaws" },
            #span { class=link, text="Nitrogen 2.0.1 for Windows on Inets" }
        ]}
    ].
