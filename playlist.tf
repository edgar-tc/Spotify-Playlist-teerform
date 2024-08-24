resource "spotify_playlist" "Under_Zone" {
  name        = "Under_Zone"
  description = "This playlist makes me in good mood"
  tracks      = [
    "4zCH9qm4R2DADamUHMCa6O",
    "37i9dQZF1DWY7EoqMbT7wZ",
    "6NwEpX2JUWHVKWfDDfcqC4"
  ]
}

data "spotify_search_track" "taylor_swift" {
  artist = "Taylor Swift"
}

resource "spotify_playlist" "taylor_swift" {
  name        = "TaylorSwift"
  description = "This playlist was created by Terraform"
  tracks      = [
    data.spotify_search_track.taylor_swift.tracks[0].id,
    data.spotify_search_track.taylor_swift.tracks[1].id,
    data.spotify_search_track.taylor_swift.tracks[2].id,
    data.spotify_search_track.taylor_swift.tracks[3].id
  ]
}
