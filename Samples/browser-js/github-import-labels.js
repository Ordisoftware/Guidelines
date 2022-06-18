// https://douglascayers.com/2019/08/01/how-to-export-and-import-github-issue-labels-between-projects/

/**
 * Inspired by @Isaddo original script: https://gist.github.com/Isaddo/7efebcb673a0957b9c6f07cd14826ea4
 * Adds descriptions per @NillerMedDild https://gist.github.com/Isaddo/7efebcb673a0957b9c6f07cd14826ea4#gistcomment-2715349
 * 
 * Changes include:
 *  - CSS selectors use `js` prefix
 * 
 * Last tested 2019-July-27:
 *  - Chrome 75.0.3770.142
 *  - Safari 12.1.2
 *  - macOS 10.14.6
 */
function createLabel( label ) {
    document.querySelector( '.js-new-label-name-input' ).value = label.name;
    document.querySelector( '.js-new-label-description-input' ).value = label.description;
    document.querySelector( '.js-new-label-color-input' ).value = '#' + label.color;
    document.querySelector( '.js-details-target ~ .btn-primary' ).disabled = false;
    document.querySelector( '.js-details-target ~ .btn-primary' ).click();
}

function updateLabel( label ) {
    let updatedLabel = false;
    [].slice.call( document.querySelectorAll( '.js-labels-list-item' ) ).forEach( element => {
        if ( element.querySelector( '.js-label-link' ).textContent.trim() === label.name ) {
            updatedLabel = true;
            element.querySelector( '.js-edit-label' ).click();
            element.querySelector( '.js-new-label-name-input' ).value = label.name;
            element.querySelector( '.js-new-label-description-input' ).value = label.description;
            element.querySelector( '.js-new-label-color-input' ).value = '#' + label.color;
            element.querySelector( '.js-edit-label-cancel ~ .btn-primary' ).click();
        }
    });
    return updatedLabel;
}

function createOrUpdate( label ) {
    if ( !updateLabel( label ) ) {
        createLabel( label );
    }
}

[
  {
    "name": "Epic",
    "description": "Complex story that encapsulate some issues as stories",
    "color": "3e4b9e"
  },
  {
    "name": "group: analysis",
    "description": "Requirements gathering",
    "color": "006b75"
  },
  {
    "name": "group: code",
    "description": "Implementation",
    "color": "006b75"
  },
  {
    "name": "group: deploy",
    "description": "Setup and migration",
    "color": "006b75"
  },
  {
    "name": "group: design",
    "description": "Modeling",
    "color": "006b75"
  },
  {
    "name": "group: manual",
    "description": "Documentation and guides",
    "color": "006b75"
  },
  {
    "name": "group: project",
    "description": "Management",
    "color": "006b75"
  },
  {
    "name": "group: training",
    "description": "Learning",
    "color": "006b75"
  },
  {
    "name": "group: user",
    "description": "Assistance and communication",
    "color": "006b75"
  },
  {
    "name": "in progress",
    "description": "Work in progress",
    "color": "ffd700"
  },
  {
    "name": "item: app",
    "description": "Product and executable",
    "color": "1d76db"
  },
  {
    "name": "item: data",
    "description": "Information",
    "color": "1d76db"
  },
  {
    "name": "item: diagram",
    "description": "Representation",
    "color": "1d76db"
  },
  {
    "name": "item: install",
    "description": "Packager",
    "color": "1d76db"
  },
  {
    "name": "item: other",
    "description": null,
    "color": "1d76db"
  },
  {
    "name": "item: source",
    "description": "Code file",
    "color": "1d76db"
  },
  {
    "name": "item: text",
    "description": "Writing",
    "color": "1d76db"
  },
  {
    "name": "item: tool",
    "description": "Third party software",
    "color": "1d76db"
  },
  {
    "name": "item: ui",
    "description": "User interface",
    "color": "1d76db"
  },
  {
    "name": "item: ux",
    "description": "User experience",
    "color": "1d76db"
  },
  {
    "name": "prio: critical",
    "description": "Urgent and important",
    "color": "900000"
  },
  {
    "name": "prio: high",
    "description": "Important",
    "color": "ca2525"
  },
  {
    "name": "prio: low",
    "description": "Not urgent nor important",
    "color": "bfdadc"
  },
  {
    "name": "state: cancelled",
    "description": "Abandoned",
    "color": "eaeaea"
  },
  {
    "name": "state: delayed",
    "description": "Deferred",
    "color": "cacaca"
  },
  {
    "name": "state: moved",
    "description": "Moved to another project",
    "color": "eaeaea"
  },
  {
    "name": "state: todo",
    "description": "Selected",
    "color": "c2e0c6"
  },
  {
    "name": "state: wontfix",
    "description": "Failed",
    "color": "707070"
  },
  {
    "name": "state: 10%",
    "description": "Work started",
    "color": "ffd700"
  },
  {
    "name": "state: 25%",
    "description": "A quartor of the tasks are done",
    "color": "ffd700"
  },
  {
      "name": "state: 50%",
      "description": "Half of the tasks are done",
      "color": "ffd700"
  },
  {
      "name": "state: 75%",
      "description": "Three quarters of the tasks are done",
      "color": "ffd700"
  },
  {
      "name": "state: 90%",
      "description": "Tasks are almost completed",
      "color": "ffd700"
  },
  {
      "name": "state: 100%",
      "description": "Tasks are finished",
      "color": "fff3b5"
  },
  {
      "name": "type: admin",
      "description": "Supervision",
      "color": "0e8a16"
  },
  {
      "name": "type: bug",
      "description": "Error",
      "color": "0e8a16"
  },
  {
      "name": "type: check",
      "description": "Test, revision and validation",
      "color": "0e8a16"
  },
  {
      "name": "type: feature",
      "description": "Functionality",
      "color": "0e8a16"
  },
  {
      "name": "type: feedback",
      "description": "Reaction",
      "color": "0e8a16"
  },
  {
      "name": "type: improve",
      "description": "Extend feature",
      "color": "0e8a16"
  },
  {
      "name": "type: layout",
      "description": "Organization and planning",
      "color": "0e8a16"
  },
  {
      "name": "type: legal",
      "description": "Licensing and juridical",
      "color": "0e8a16"
  },
  {
      "name": "type: method",
      "description": "Guideline",
      "color": "0e8a16"
  }
].forEach( label => createOrUpdate( label ) );
