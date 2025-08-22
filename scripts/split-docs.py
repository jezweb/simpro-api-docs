#!/usr/bin/env python3
"""
Split the massive SimPro API documentation into smaller, Context7-friendly files.
"""

import re
import os
from pathlib import Path

def split_markdown_file(input_file, output_dir):
    """Split a large markdown file by h1 sections"""
    
    # Read the full file
    with open(input_file, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Find all h1 sections
    sections = re.split(r'\n<h1 id="([^"]+)">([^<]+)</h1>', content)
    
    # First section is before any h1 (header content)
    header_content = sections[0]
    
    # Create output directory
    os.makedirs(output_dir, exist_ok=True)
    
    # Write header file
    with open(f"{output_dir}/00-overview.md", 'w', encoding='utf-8') as f:
        f.write(header_content.strip())
    
    # Process remaining sections (they come in groups of 3: content, id, title, content)
    for i in range(1, len(sections), 3):
        if i + 2 >= len(sections):
            break
            
        section_id = sections[i]
        section_title = sections[i + 1] 
        section_content = sections[i + 2]
        
        # Clean up the section title for filename
        filename = section_id.replace('simpro-rest-api-', '').replace('-', '_')
        
        # Write section file
        output_file = f"{output_dir}/{filename}.md"
        with open(output_file, 'w', encoding='utf-8') as f:
            f.write(f"# {section_title}\n\n")
            f.write(section_content.strip())
        
        print(f"Created: {output_file}")
    
    print(f"\nSplit complete! Created {len(os.listdir(output_dir))} files in {output_dir}")

if __name__ == "__main__":
    script_dir = Path(__file__).parent
    project_dir = script_dir.parent
    
    input_file = project_dir / "api-reference" / "simpro-api.md"
    output_dir = project_dir / "api-reference" / "sections"
    
    print(f"Splitting {input_file} into {output_dir}")
    split_markdown_file(input_file, output_dir)