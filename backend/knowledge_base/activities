# Week 3: mynavi.jp Company Data Scraper
# Machine Learning and Intelligence Course
# Fill in the blanks to complete this web scraper

import requests
from bs4 import BeautifulSoup
import pandas as pd
import time
import json
from urllib.parse import urljoin, urlparse
import re

class MyNaviScraper:
    """
    A web scraper for collecting company information from mynavi.jp
    TODO: Complete the implementation of this scraper class
    """
    
    def __init__(self, base_url="https://tenshoku.mynavi.jp", delay=1):
        """
        Initialize the scraper with base URL and delay between requests.
        
        Args:
            base_url (str): Base URL for mynavi.jp
            delay (int): Delay in seconds between requests (be respectful!)
        """
        self.base_url = base_url
        self.delay = delay
        self.session = requests.Session()
        
        # TODO 1: Set appropriate headers to mimic a real browser
        self.session.headers.update({
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
        })
        
        self.scraped_data = []
    
    def get_page(self, url):
        """
        Retrieve a web page with error handling.
        
        Args:
            url (str): URL to retrieve
            
        Returns:
            BeautifulSoup object or None if failed
        """
        try:
            # TODO 2: Make a GET request to the URL
            response = self.session.get(url)
            
            # TODO 3: Check if the response is successful (status code 200)
            if response.status_code == 200:
                # TODO 4: Parse the HTML content using BeautifulSoup
                soup = BeautifulSoup(response.content, 'html.parser')
                return soup
            else:
                print(f"Failed to retrieve {url}: Status code {response.status_code}")
                return None
                
        except Exception as e:
            print(f"Error retrieving {url}: {str(e)}")
            return None
    
    def extract_company_info(self, soup):
        """
        Extract company information from a company page.
        
        Args:
            soup (BeautifulSoup): Parsed HTML content
            
        Returns:
            dict: Extracted company information
        """
        company_info = {}
        
        try:
            # TODO 5: Extract company name
            # Look for elements with class 'company-name' or similar
            name_element = soup.find('h1', class_='company-name')
            if name_element:
                company_info['company_name'] = name_element.get_text(strip=True)
            else:
                company_info['company_name'] = "Unknown"
            
            # TODO 6: Extract company description
            # Look for elements containing company description
            desc_element = soup.find('div', class_='company-description')
            if desc_element:
                company_info['description'] = desc_element.get_text(strip=True)
            else:
                company_info['description'] = ""
            
            # TODO 7: Extract industry/sector information
            # Look for industry-related elements
            industry_element = soup.find('span', class_='industry')
            if industry_element:
                company_info['industry'] = industry_element.get_text(strip=True)
            else:
                company_info['industry'] = "Unknown"
            
            # TODO 8: Extract company size (number of employees)
            # Look for employee count information
            size_element = soup.find('span', class_='company-size')
            if size_element:
                company_info['company_size'] = size_element.get_text(strip=True)
            else:
                company_info['company_size'] = "Unknown"
            
            # TODO 9: Extract location/address
            # Look for location information
            location_element = soup.find('span', class_='location')
            if location_element:
                company_info['location'] = location_element.get_text(strip=True)
            else:
                company_info['location'] = "Unknown"
            
            # TODO 10: Extract any additional relevant information
            # This could include benefits, work style, etc.
            benefits_element = soup.find('div', class_='benefits')
            if benefits_element:
                company_info['benefits'] = benefits_element.get_text(strip=True)
            else:
                company_info['benefits'] = ""
                
        except Exception as e:
            print(f"Error extracting company info: {str(e)}")
            company_info['error'] = str(e)
        
        return company_info
    
    def get_company_links(self, search_url):
        """
        Get all company page links from a search results page.
        
        Args:
            search_url (str): URL of the search results page
            
        Returns:
            list: List of company page URLs
        """
        company_links = []
        
        # TODO 11: Get the search results page
        soup = self.get_page(search_url)
        if not soup:
            return company_links
        
        try:
            # TODO 12: Find all links to company pages
            # Look for links that contain company information
            # This might be in elements with classes like 'company-link' or similar
            link_elements = soup.find_all('a', class_='company-link')
            
            for link_element in link_elements:
                # TODO 13: Extract the href attribute
                href = link_element.get('href')
                if href:
                    # TODO 14: Convert relative URLs to absolute URLs
                    full_url = urljoin(self.base_url, href)
                    company_links.append(full_url)
        
        except Exception as e:
            print(f"Error extracting company links: {str(e)}")
        
        return company_links
    
    def scrape_companies(self, search_urls, max_companies=50):
        """
        Scrape company information from multiple search result pages.
        
        Args:
            search_urls (list): List of search result URLs
            max_companies (int): Maximum number of companies to scrape
            
        Returns:
            list: List of company information dictionaries
        """
        all_company_links = []
        
        # TODO 15: Collect all company links from search pages
        for search_url in search_urls:
            print(f"Getting company links from: {search_url}")
            company_links = self.get_company_links(search_url)
            all_company_links.extend(company_links)
            
            # TODO 16: Add delay between requests to be respectful
            time.sleep(self.delay)
        
        # TODO 17: Remove duplicates while preserving order
        unique_links = list(dict.fromkeys(all_company_links))
        
        # TODO 18: Limit to max_companies
        if len(unique_links) > max_companies:
            unique_links = unique_links[:max_companies]
        
        print(f"Found {len(unique_links)} unique company pages to scrape")
        
        # TODO 19: Scrape each company page
        scraped_companies = []
        for i, company_url in enumerate(unique_links):
            print(f"Scraping company {i+1}/{len(unique_links)}: {company_url}")
            
            # TODO 20: Get the company page
            soup = self.get_page(company_url)
            if soup:
                # TODO 21: Extract company information
                company_info = self.extract_company_info(soup)
                company_info['url'] = company_url
                scraped_companies.append(company_info)
            
            # TODO 22: Add delay between requests
            time.sleep(self.delay)
        
        self.scraped_data = scraped_companies
        return scraped_companies
    
    def save_to_csv(self, filename="mynavi_companies.csv"):
        """
        Save scraped data to CSV file.
        
        Args:
            filename (str): Name of the CSV file to save
        """
        if not self.scraped_data:
            print("No data to save!")
            return
        
        # TODO 23: Create a DataFrame from scraped data
        df = pd.DataFrame(self.scraped_data)
        
        # TODO 24: Save DataFrame to CSV
        df.to_csv(filename, index=False, encoding='utf-8')
        print(f"Data saved to {filename}")
    
    def save_to_json(self, filename="mynavi_companies.json"):
        """
        Save scraped data to JSON file.
        
        Args:
            filename (str): Name of the JSON file to save
        """
        if not self.scraped_data:
            print("No data to save!")
            return
        
        # TODO 25: Save data to JSON file
        with open(filename, 'w', encoding='utf-8') as f:
            json.dump(self.scraped_data, f, ensure_ascii=False, indent=2)
        print(f"Data saved to {filename}")

def main():
    """
    Main function to run the scraper.
    TODO: Complete the main function to demonstrate the scraper.
    """
    
    # TODO 26: Create a MyNaviScraper instance
    scraper = MyNaviScraper(delay=2)  # Be respectful with 2-second delay
    
    # TODO 27: Define search URLs for different industries or locations
    # Note: These are example URLs - you'll need to find actual mynavi.jp search URLs
    search_urls = [
        "https://tenshoku.mynavi.jp/list/",  # Example URL - replace with actual
        # Add more search URLs here
    ]
    
    # TODO 28: Scrape companies (limit to 10 for testing)
    print("Starting company scraping...")
    companies = scraper.scrape_companies(search_urls, max_companies=10)
    
    # TODO 29: Print summary of scraped data
    print(f"\nScraping complete! Found {len(companies)} companies")
    
    # TODO 30: Save data to both CSV and JSON formats
    scraper.save_to_csv("week3_mynavi_companies.csv")
    scraper.save_to_json("week3_mynavi_companies.json")
    
    # TODO 31: Display sample of scraped data
    if companies:
        print("\nSample company data:")
        for i, company in enumerate(companies[:3]):  # Show first 3 companies
            print(f"\nCompany {i+1}:")
            for key, value in company.items():
                print(f"  {key}: {value}")

# TODO 32: Add the standard Python main guard
if __name__ == "__main__":
    main()
