import '../css/app.css';

import { createInertiaApp } from '@inertiajs/react';
import { resolvePageComponent } from 'laravel-vite-plugin/inertia-helpers';
import { createRoot } from 'react-dom/client';
import { initializeTheme } from './hooks/use-appearance';

const appName = import.meta.env.VITE_APP_NAME || 'Laravel';

createInertiaApp({
    title: (title) => `${title} - ${appName}`,
    resolve: async (name) => {
        // Convert dot notation to folder structure
        const path = `./Pages/${name.replace(/\./g, '/')}.jsx`;

        // import.meta.glob returns an object of functions
        const pages = import.meta.glob('./Pages/**/*.jsx');

        if (!pages[path]) {
            throw new Error(`Page not found: ${path}`);
        }

        return pages[path]();
    },
    setup({ el, App, props }) {
        const root = createRoot(el);
        root.render(<App {...props} />);
    },
    progress: {
        color: '#4B5563',
    },
});


// This will set light / dark mode on load...
initializeTheme();
