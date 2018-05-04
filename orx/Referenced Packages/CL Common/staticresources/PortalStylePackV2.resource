body #app {
  font-size: 12px;
  font-family: 'Lato';
  font-weight: 400;
  color: #37444e;
  line-height: normal; }

.overlay,
.screen-mask {
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5); }

.overlay > div:first-child {
  position: absolute;
  top: calc(10% - 30px);
  right: calc(10% - 30px);
  width: 30px;
  height: 30px;
  font-size: 30px;
  color: #ffffff;
  cursor: pointer; }
.overlay > div:last-child {
  position: absolute;
  top: 10%;
  bottom: 10%;
  left: 10%;
  right: 10%; }

.actor-wrapper {
  position: relative; }

.field .label,
.entry .label {
  color: #37444e;
  font-size: 12px;
  font-family: 'Lato';
  font-weight: 400;
  text-align: left; }

.control .reference {
  border: none;
  text-align: left;
  font-size: 12px;
  font-family: 'Lato';
  font-weight: 400;
  padding: 0;
  height: 32px;
  line-height: 32px;
  vertical-align: middle; }

.action {
  display: inline-block;
  padding: 10px 20px;
  font-size: 14px;
  border-radius: 4px;
  cursor: pointer;
  background-color: #1cbdd4;
  color: #ffffff; }

.action-wrapper {
  display: inline-block; }

.action.disabled {
  display: inline-block;
  padding: 10px 20px;
  font-size: 14px;
  border-radius: 4px;
  cursor: not-allowed;
  background-color: #8edeea; }

div[name='upload'] .label {
  font-size: 12px;
  font-family: 'Lato';
  font-weight: 400; }

div[name='upload'] + .progress {
  position: relative;
  height: 20px;
  background-color: inherit;
  border: none;
  box-shadow: none; }
  div[name='upload'] + .progress .animation-bar {
    background-color: #48ce94;
    height: 100%; }
  div[name='upload'] + .progress .animation-text {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    width: 100%;
    height: 20px;
    line-height: 20px;
    vertical-align: middle;
    text-align: center;
    color: #37444e; }

.authenticated-header {
  background-color: #37444e;
  color: #ffffff;
  height: 100%; }

.steps > div > .title,
.tabs > div > .title {
  height: 44px;
  font-size: 14px; }
  .steps > div > .title .step,
  .tabs > div > .title .step {
    height: 40px;
    line-height: 40px;
    vertical-align: middle;
    text-align: center;
    border-bottom: 4px solid #ffffff; }
  .steps > div > .title .step.current,
  .tabs > div > .title .step.current {
    border-bottom: 4px solid #1cbdd4; }

.editable .section {
  padding-left: 12px;
  padding-right: 0; }
  .editable .section .field {
    position: relative;
    display: inline-block;
    vertical-align: top;
    padding-left: 0;
    padding-right: 12px;
    padding-top: 6px;
    padding-bottom: 6px; }
    .editable .section .field .label {
      display: inline-block;
      padding-left: 12px;
      padding-right: 12px;
      padding-top: 6px;
      padding-bottom: 6px;
      color: #7f7f7f; }
      .editable .section .field .label > div {
        display: inline; }
    .editable .section .field .control {
      text-indent: 25px; }
      .editable .section .field .control input.form-control {
        font-size: 12px;
        height: 32px;
        padding-left: 25px;
        padding-right: 12px;
        padding-top: 6px;
        padding-bottom: 6px; }
      .editable .section .field .control select.form-control {
        font-size: 12px;
        height: 32px;
        padding-left: 25px;
        padding-right: 12px;
        padding-top: 6px;
        padding-bottom: 6px;
        text-indent: 18px; }
    .editable .section .field .error {
      position: absolute;
      color: #e63c00;
      top: calc(2 * 6px);
      right: 12px; }
  .editable .section .field.required .label:after {
    content: '*';
    color: #e63c00;
    margin-left: 5px; }

.card-view {
  margin-left: 20px; }
  .card-view .entry .content {
    margin-right: 20px;
    margin-bottom: 20px;
    border: 1px solid #ebeef0;
    border-radius: 4px; }
    .card-view .entry .content .field .label {
      display: inline-block;
      padding-left: 12px;
      padding-right: 12px;
      padding-top: 6px;
      padding-bottom: 6px;
      color: #7f7f7f;
      width: 40%;
      text-align: right; }
    .card-view .entry .content .field .control {
      display: inline-block;
      padding-left: 12px;
      padding-right: 12px;
      padding-top: 6px;
      padding-bottom: 6px;
      color: #7f7f7f;
      width: 60%;
      color: #37444e; }

.list-view .list-header {
  font-weight: bold;
  width: 100%;
  padding: 0 10px;
  height: 40px;
  line-height: 40px;
  vertical-align: middle; }
  .list-view .list-header .column-header {
    position: relative;
    display: inline-block;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    padding-left: 5px; }
    .list-view .list-header .column-header .sortable-indicator {
      position: absolute;
      top: 0;
      bottom: 0;
      left: 0;
      /*right: 5px;*/
      width: 10px; }
      .list-view .list-header .column-header .sortable-indicator .ascending-arrow,
      .list-view .list-header .column-header .sortable-indicator .descending-arrow {
        position: absolute;
        /*top: calc(50% - 6px);*/
        top: 6px;
        left: 0;
        width: 100%; }
  .list-view .list-header .column-header.sortable {
    padding-left: 10px;
    cursor: pointer; }
  .list-view .list-header .column-header.sortable .ascending-arrow,
  .list-view .list-header .column-header.sortable .descending-arrow {
    color: #bfbfbf; }
  .list-view .list-header .column-header.sortable .ascending-arrow.highlight,
  .list-view .list-header .column-header.sortable .descending-arrow.highlight {
    color: #37444e; }
  .list-view .list-header .column-header.sortable .ascending-arrow.nohighlight,
  .list-view .list-header .column-header.sortable .descending-arrow.nohighlight {
    display: none; }
  .list-view .list-header .column-header.sortable:hover .ascending-arrow,
  .list-view .list-header .column-header.sortable:hover .descending-arrow {
    color: #7f7f7f; }
  .list-view .list-header .column-header.sortable:hover .ascending-arrow.highlight,
  .list-view .list-header .column-header.sortable:hover .descending-arrow.highlight {
    color: #37444e; }
  .list-view .list-header .column-header.sortable:hover .ascending-arrow.nohighlight,
  .list-view .list-header .column-header.sortable:hover .descending-arrow.nohighlight {
    display: block;
    color: #bfbfbf; }
.list-view .entry {
  width: 100%;
  padding: 0 10px; }
  .list-view .entry .list-row {
    width: 100%;
    height: 38px;
    line-height: 38px;
    vertical-align: middle;
    border-top: 1px solid #ebeef0; }
    .list-view .entry .list-row .field {
      position: relative;
      display: inline-block;
      white-space: nowrap;
      overflow: hidden;
      text-overflow: ellipsis;
      padding-left: 5px; }

.disclosure .description {
  padding: 20px;
  border: 1px solid #ebeef0;
  border-radius: 4px; }
.disclosure input[type="checkbox"] {
  position: relative;
  top: 15px; }
.disclosure .confirmation {
  margin-left: 20px; }
  .disclosure .confirmation a, .disclosure .confirmation a:hover, .disclosure .confirmation a.hover {
    color: inherit;
    text-decoration: none; }
.disclosure .confirmation-with-dialog {
  margin-left: 20px; }
  .disclosure .confirmation-with-dialog a, .disclosure .confirmation-with-dialog a:hover, .disclosure .confirmation-with-dialog a.hover {
    text-decoration: none;
    cursor: pointer; }

.entry > .content {
  position: relative; }
  .entry > .content .collapsible-control {
    position: absolute;
    top: 6px;
    right: 12px;
    cursor: pointer; }

.screen-mask > .screen-dialog.prompt {
  position: relative;
  margin-top: 50px;
  margin-left: calc(50% - 200px);
  width: 400px;
  background-color: #ffffff; }
  .screen-mask > .screen-dialog.prompt > .title-bar {
    position: relative;
    height: 40px;
    border-bottom: 2px solid #ebeef0; }
    .screen-mask > .screen-dialog.prompt > .title-bar > .title {
      position: absolute;
      top: 0;
      left: 0;
      right: 40px;
      bottom: 0;
      font-size: 16px; }
    .screen-mask > .screen-dialog.prompt > .title-bar > .close-icon {
      position: absolute;
      top: 0;
      right: 0;
      width: 40px;
      bottom: 0;
      font-size: 30px; }
  .screen-mask > .screen-dialog.prompt > .buttons {
    height: 40px;
    border-top: 2px solid #ebeef0; }
.screen-mask > .screen-dialog.cover {
  position: absolute;
  top: 5%;
  bottom: 5%;
  left: 5%;
  right: 5%;
  background-color: #ffffff; }
  .screen-mask > .screen-dialog.cover > .title-bar {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    height: 40px;
    border-bottom: 2px solid #ebeef0; }
    .screen-mask > .screen-dialog.cover > .title-bar > .title {
      position: absolute;
      top: 0;
      left: 0;
      right: 40px;
      bottom: 0;
      font-size: 16px; }
    .screen-mask > .screen-dialog.cover > .title-bar > .close-icon {
      position: absolute;
      top: 0;
      right: 0;
      width: 40px;
      bottom: 0;
      font-size: 30px; }
  .screen-mask > .screen-dialog.cover > .content {
    position: absolute;
    top: 42px;
    left: 0;
    right: 0;
    bottom: 42px;
    width: 100%; }
  .screen-mask > .screen-dialog.cover > .content.tall {
    bottom: 0; }
  .screen-mask > .screen-dialog.cover > .buttons {
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    width: 100%;
    height: 40px;
    border-top: 2px solid #ebeef0; }

div.actor-wrapper[name="SimpleLayout_Top"] {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  width: 100%;
  height: 100%; }
  div.actor-wrapper[name="SimpleLayout_Top"] div.actor-wrapper[name="SimpleLayout_HeaderContentZone"] {
    position: absolute;
    top: 0;
    height: 49px;
    left: 0;
    right: 0;
    width: 100%;
    background-color: #37444e;
    color: #ffffff; }
  div.actor-wrapper[name="SimpleLayout_Top"] div.actor-wrapper[name="SimpleLayout_Sidebar1"] {
    position: absolute;
    top: 49px;
    bottom: 0;
    left: 0;
    width: 100px;
    overflow-x: hidden;
    overflow-y: auto; }
  div.actor-wrapper[name="SimpleLayout_Top"] div.actor-wrapper[name="SimpleLayout_Sidebar2"] {
    position: absolute;
    top: 49px;
    bottom: 0;
    right: 0;
    width: 100px;
    overflow-x: hidden;
    overflow-y: auto; }
  div.actor-wrapper[name="SimpleLayout_Top"] div.actor-wrapper[name="SimpleLayout1_PrimaryContentZone"] {
    position: absolute;
    top: 49px;
    bottom: 0;
    left: 100px;
    right: 100px;
    overflow-y: auto; }
  div.actor-wrapper[name="SimpleLayout_Top"] div.actor-wrapper[name="SimpleLayout2_PrimaryContentZone"] {
    position: absolute;
    top: 49px;
    bottom: 0;
    left: 100px;
    right: 50%;
    overflow-y: auto;
    margin-right: 20px; }
  div.actor-wrapper[name="SimpleLayout_Top"] div.actor-wrapper[name="SimpleLayout2_SecondaryContentZone"] {
    position: absolute;
    top: 49px;
    bottom: 0;
    left: 50%;
    right: 100px;
    overflow-y: auto;
    margin-left: 20px; }

/*# sourceMappingURL=portal.css.map */
