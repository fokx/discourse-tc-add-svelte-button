import {apiInitializer} from "discourse/lib/api";
import DButton from "discourse/components/d-button";
import { dasherize } from "@ember/string";
import concatClass from "discourse/helpers/concat-class";
import icon from "discourse/helpers/d-icon";
import { withPluginApi } from "discourse/lib/plugin-api";
import { escapeExpression } from "discourse/lib/utilities";
import not from "truth-helpers/helpers/not";

// export default apiInitializer("1.0", (api) => {
//     api.onPageChange(() => {
//         let pathname = window.location.pathname;
//         let url = `https://east.xjtu.app`;
//         if (pathname.startsWith("/t/")){
//             let topic_id = pathname.split("/")[3];
//             url = `https://east.xjtu.app/tn/${topic_id}`;
//         }
//         const svelte_button = document.getElementById('header-svelte-button');
//         console.log(svelte_button);
//         if (svelte_button) {
//             svelte_button.href = url;
//         }
//     });
//     // svg icon from, size 32
//     // https://www.svgrepo.com/svg/306824/svelte?edit=true
//     api.headerIcons.add("header-svelte-button", HeaderSvelteButton);
// });


export default apiInitializer("1.0", (api) => {
    api.headerIcons.add("some-unique-name", <template>
        <li>
            <a id="svelte-button" class="icon btn-flat" href="https://east.xjtu.app" title="EastXJ">
                <img src="https://assets.xjtu.app/pool/svelte.bw.svg" aria-hidden="true" />
                <span class="sr-only">EastXJ</span>
            </a>
        </li>
    </template>);
});
