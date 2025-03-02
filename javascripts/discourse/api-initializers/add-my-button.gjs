import {apiInitializer} from "discourse/lib/api";
import DButton from "discourse/components/d-button";
import { dasherize } from "@ember/string";
import concatClass from "discourse/helpers/concat-class";
import icon from "discourse/helpers/d-icon";
import { withPluginApi } from "discourse/lib/plugin-api";
import { escapeExpression } from "discourse/lib/utilities";

export default {
    name: "header-icon-links",
    initialize() {
        withPluginApi("1.0", (api) => {
            api.onPageChange(() => {
                let pathname = window.location.pathname;
                if (pathname.startsWith("/t/")){
                    let topic_id = pathname.split("/")[3];
                    document.getElementById('svelte-button').href = `https://east.xjtu.app/tn/${topic_id}`;
                } else{
                    document.getElementById('svelte-button').href = `https://east.xjtu.app`;
                }
            });
            const beforeIcon = ["chat", "search", "hamburger", "user-menu"];
            // svg icon from, size 32
            // https://www.svgrepo.com/svg/306824/svelte?edit=true
            api.headerIcons.add("svelte-button", <template>
                <li>
                    <a id="svelte-button" class="icon btn-flat" href="https://east.xjtu.app" title="EastXJ">
                    <img src="https://assets.xjtu.app/pool/svelte.bw.svg" aria-hidden="true" />
                    <span class="sr-only">EastXJ</span>
                    </a>
                </li>
            </template>, {
                before: beforeIcon,
            });
        });
    },
};
