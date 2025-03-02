import {apiInitializer} from "discourse/lib/api";
import DButton from "discourse/components/d-button";
import { dasherize } from "@ember/string";
import concatClass from "discourse/helpers/concat-class";
import icon from "discourse/helpers/d-icon";
import { withPluginApi } from "discourse/lib/plugin-api";
import { escapeExpression } from "discourse/lib/utilities";
import not from "truth-helpers/helpers/not";
import {HeaderNavButton} from "../components/header-nav-button";

export default {
    name: "header-icon-links",
    initialize() {
        withPluginApi("1.0", (api) => {
            api.onPageChange(() => {
                let pathname = window.location.pathname;
                let url = `https://east.xjtu.app`;
                if (pathname.startsWith("/t/")){
                    let topic_id = pathname.split("/")[3];
                    url = `https://east.xjtu.app/tn/${topic_id}`;
                }
                const svelte_button = document.getElementById('svelte-button');
                if (svelte_button) {
                    svelte_button.href = url;
                }
            });
            const beforeIcon = ["chat", "search", "hamburger", "user-menu"];
            // svg icon from, size 32
            // https://www.svgrepo.com/svg/306824/svelte?edit=true
            api.headerIcons.add("svelte-button", HeaderNavButton, {
                before: beforeIcon,
            });
        });
    },
};
