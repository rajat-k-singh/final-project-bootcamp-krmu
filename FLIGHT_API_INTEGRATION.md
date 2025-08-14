# Flight API Integration

## Overview

The Travel Agency app now includes comprehensive flight search and tracking functionality using the Flight API from `api.flightapi.io`.

## Features Added

### 1. Flight Search
- **One-way flights**: Search for one-way flights between airports
- **Round-trip flights**: Search for round-trip flights with departure and return dates
- **Multiple passengers**: Support for adults, children, and infants
- **Cabin classes**: Economy, Premium Economy, Business, and First Class options

### 2. Flight Tracking
- **Real-time tracking**: Track specific flights by flight number
- **Flight status**: View current status (Scheduled, Boarding, Departed, Arrived, Delayed, Cancelled)
- **Detailed information**: Gate, terminal, departure/arrival times, delays, and remarks

### 3. Airport Information
- **Airport codes**: Database of major airports with codes and names
- **Airport schedules**: View all flights for a specific airport on a given date

## API Endpoints Used

| Endpoint | Description | Cost per Request |
|----------|-------------|------------------|
| `/onewaytrip` | Search one-way flights | 2 credits |
| `/roundtrip` | Search round-trip flights | 2 credits |
| `/flight` | Track specific flight | 1 credit |
| `/airport` | Get airport schedule | 2 credits |
| `/airline` | Get airline & airport codes | 1 credit |

## API Key Configuration

The API key is configured in `client/src/services/api.js`:
```javascript
const FLIGHT_API_KEY = '689b0813ee7a9992a776e96a';
```

## Usage Limits

- **Free Plan**: 100 requests per 30 days
- **Rate Limiting**: 429 error when limit exceeded
- **No Overages**: Free plan stops working when limit reached

## Fallback System

The app includes a robust fallback system:
1. **Primary**: Attempts to use the real Flight API
2. **Fallback**: Uses mock data if API is unavailable or returns errors
3. **Seamless**: Users don't notice the difference

## Mock Data Included

### Sample Flights
- American Airlines AA123 (JFK → LAX)
- Delta Air Lines DL456 (JFK → LAX)  
- United Airlines UA789 (JFK → LAX)

### Sample Airports
- JFK (New York)
- LAX (Los Angeles)
- ORD (Chicago)
- DFW (Dallas)
- ATL (Atlanta)
- SFO (San Francisco)
- MIA (Miami)
- SEA (Seattle)

## New Pages Added

### 1. Flight Search (`/flights`)
- Search form with all flight options
- Results display with pricing and timing
- Responsive design for mobile devices

### 2. Flight Tracker (`/track-flight`)
- Simple flight number input
- Detailed flight information display
- Status indicators with color coding

## Navigation Updates

- Added "Flights" link in main navigation
- Added "Track Flight" link in main navigation
- Updated homepage with call-to-action buttons

## Error Handling

The app handles various API errors gracefully:
- **404**: Flight not found
- **410**: No flights available for dates
- **429**: Rate limit exceeded
- **Network errors**: Fallback to mock data

## Testing the Integration

### Flight Search
1. Go to `/flights`
2. Enter airport codes (e.g., JFK, LAX)
3. Select dates and passenger info
4. Click "Search Flights"
5. View results with pricing and timing

### Flight Tracking
1. Go to `/track-flight`
2. Enter flight number (e.g., AA123)
3. Click "Track Flight"
4. View detailed flight information

## Future Enhancements

1. **Booking Integration**: Connect flight search to booking system
2. **Price Alerts**: Notify users of price changes
3. **Flight History**: Track user's flight searches
4. **Multi-city Flights**: Support for complex itineraries
5. **Real-time Updates**: WebSocket integration for live updates

## Technical Implementation

### Files Modified
- `client/src/services/api.js` - Flight API service
- `client/src/pages/FlightSearch.js` - Flight search page
- `client/src/pages/FlightSearch.css` - Flight search styles
- `client/src/pages/FlightTracker.js` - Flight tracking page
- `client/src/pages/FlightTracker.css` - Flight tracking styles
- `client/src/App.js` - Added routes
- `client/src/components/Navigation.js` - Added navigation links
- `client/src/pages/Home.js` - Added hero buttons
- `client/src/pages/Home.css` - Added hero button styles

### Key Features
- **Async/Await**: Modern JavaScript for API calls
- **Error Boundaries**: Graceful error handling
- **Responsive Design**: Works on all device sizes
- **Loading States**: User feedback during API calls
- **Mock Data**: Reliable fallback system
