export let data = #{
    for_vcs: LOCAL,
    cool_setting: if SYSTEM.hostname == "foo" { 10 } else { 25 }
};

export let eggs = #{
    kitty: #{
        targets: "~/.config/kitty",
        templates: [],
        enabled: true
    },

    nvim: #{
        targets: "~/.config/nvim",
        templates: [],
        enabled: true
    },

    tmux: #{
        targets: "~/.config/tmux",
        templates: [],
        enabled: true
    },

    zsh: #{
        targets: #{
            ".zshrc": "~/.zshrc",
        },
        templates: [],
        enabled: true
    },

    fastfetch: #{
        targets: "~/.config/fastfetch",
        templates: [],
        enabled: true
    },

    fakeHypr: #{
        targets: "~/.config/hypr",
        templates: [],
        enabled: false
    },

    hypr: #{
        targets: "~/.config/hypr",
        templates: [],
        enabled: true
    },

    waybar: #{
        targets: "~/.config/waybar",
        templates: [],
        enabled: true
    },

    wallust: #{
        targets: "~/.config/wallust",
        templates: [],
        enabled: true
    },

    kando: #{
        targets: "~/.config/kando",
        templates: [],
        enabled: true
    },

    rofi: #{
        targets: "~/.config/rofi",
        templates: [],
        enabled: true
    },
    
    cava: #{
        targets: "~/.config/cava",
        templates: [],
        rnabled: true
    },
};
