import Component from "@glimmer/component";
import { tracked } from "@glimmer/tracking";
import { action } from "@ember/object";
import { service } from "@ember/service";
import DButton from "discourse/components/d-button";
import not from "truth-helpers/helpers/not";

export default class HeaderNavButton extends Component {
    @service site;

    <template>
    {{#if (not this.site.mobileView)}}
        <li>
            <a id="svelte-button" class="icon btn-flat" href="https://east.xjtu.app" title="EastXJ">
                <img src="https://assets.xjtu.app/pool/svelte.bw.svg" aria-hidden="true" />
                <span class="sr-only">EastXJ</span>
            </a>
        </li>
    {{/if}}
    </template>
}
