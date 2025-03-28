export let data = #{
    for_vcs: LOCAL,
    cool_setting: if SYSTEM.hostname == "foo" { 10 } else { 25 }
};
let hyprconf = 2;
export let eggs = #{
    kitty: #{
        targets: "~/.config/kitty",
        templates: [],
        enabled: true
    },

    fakeHypr: #{
        targets: "~/.config/hypr",
        templates: [],
        enabled: if hyprconf == 2 {true} else {false}
    },

    hypr: #{
        targets: "~/.config/hypr",
        templates: [],
        enabled: if hyprconf == 1 {true} else {false}
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
    }
};

