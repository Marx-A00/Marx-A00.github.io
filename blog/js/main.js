// Main JavaScript for the blog
document.addEventListener('DOMContentLoaded', function() {
  console.log('Blog initialized');
  
  // Add hover effects for links
  const links = document.querySelectorAll('a');
  links.forEach(link => {
    link.addEventListener('mouseenter', function() {
      this.style.transition = 'all 0.2s ease';
    });
  });
  
  // Hover effect for dividers (like on the main site)
  document.addEventListener('mousemove', (e) => {
    const dividers = document.querySelectorAll('.divider');
    
    dividers.forEach(divider => {
      const rect = divider.getBoundingClientRect();
      const x = e.clientX - rect.left;
      const y = e.clientY - rect.top;
      
      divider.style.setProperty('--mouse-x', `${x}px`);
      divider.style.setProperty('--mouse-y', `${y}px`);
    });
  });
}); 