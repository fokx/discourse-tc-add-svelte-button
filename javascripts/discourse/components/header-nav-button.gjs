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
            <DButton class="icon btn-flat" href="https://east.xjtu.app" @icon="s"  >
            </DButton>
        </li>
    {{/if}}
    </template>
}
