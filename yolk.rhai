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

    walker: #{
        targets: "~/.config/walker",
        templates: [],
        enabled: true
    },

    fakeHypr: #{
        targets: "~/.config/hypr",
        templates: [],
        enabled: true
    },

    hypr: #{
        targets: "~/.config/hypr",
        templates: [],
        enabled: false
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
    }
};

