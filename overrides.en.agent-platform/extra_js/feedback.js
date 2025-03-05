document.addEventListener('click', function(event) {
    const target = event.target.closest('[kore-feedback-link]');
    if (target) {
        event.preventDefault();
        var BASE_URL ="https://docs.google.com/forms/d/e/1FAIpQLScS7Iv0uIYXSdxhZtwzxVZi4K0pg0-7dX23xIQ0CF56YvIAzg/viewform?entry.1427399686="
        //let feedbackValue = target.getAttribute('href');
        let feedbackUrl=BASE_URL+window.location.href;
        window.open(feedbackUrl);
        
        // Add your feedback handling logic here
        // Example:
        // sendFeedback(feedbackValue);
    }
}, true);
