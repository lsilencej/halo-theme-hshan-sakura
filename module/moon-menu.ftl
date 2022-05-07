<div class="moon-menu" id="moonMenu">
  <div class="moon-menu-items">
    <span class="moon-menu-item" onclick="back2Top()" style="opacity: 0;">
        <i class="fa fa-arrow-up" aria-hidden="true"></i>
    </span>
    <span class="moon-menu-item" onclick="back2Bottom()" style="opacity: 0;">
        <i class="fa fa-arrow-down" aria-hidden="true"></i>
    </span>
    <span class="moon-menu-item" onclick="toSearchBox()" style="opacity: 0;">
        <i class="fa fa-search" aria-hidden="true"></i>
    </span>
  </div>
  <div class="moon-menu-button" onclick="moonButton()">
    <svg class="moon-menu-bg">
      <circle class="moon-menu-cricle" cx="50%" cy="50%" r="44%"></circle>
      <circle class="moon-menu-border" cx="50%" cy="50%" r="48%" style="stroke-dasharray: 0, 196;"></circle>
      <g class="moon-dot">
        <circle r="0.2rem" cx="0" cy="-0.8rem"></circle>
        <circle r="0.2rem"></circle>
        <circle r="0.2rem" cx="0" cy="0.8rem"></circle>
      </g>
    </svg>
    <div class="moon-menu-content">
      <div class="moon-menu-icon" style="display: block;"></div>
      <div class="moon-menu-text" style="display: none;">1%</div>
    </div>
  </div>
</div>