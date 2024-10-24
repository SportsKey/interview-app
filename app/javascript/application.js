// Entry point for the build script in your package.json
import { Turbo } from "@hotwired/turbo-rails";



// https://turbo.hotwired.dev/handbook/drive#disabling-turbo-drive-on-specific-links-or-forms
// Enabling turbo by default and only enabling it for needed links/forms
Turbo.session.drive = false;
// The default of 500ms is too long and
// users can lose the causal link between clicking
// a link and seeing the browser respond
Turbo.setProgressBarDelay(100)

console.log("Good luck!")