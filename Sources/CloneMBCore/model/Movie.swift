//
//  Movie.swift
//  
//
//  Created by Eang Tithsophorn on 18/8/23.
//

import Foundation


import Foundation

// MARK: - MovieResponse
public struct MovieResponse: Codable {
    public let page: Int
    public let results: [Movie]
    public let totalPages, totalResults: Int

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - Result
public struct Movie: Codable {
    public  let adult: Bool?
    public let backdropPath: String?
    public  let id: Int?
    public let title: String?
    public  let originalLanguage: OriginalLanguage?
    public  let originalTitle: String?
    public  let overview, posterPath: String?
    public  let mediaType: MediaType?
    public   let genreIDS: [Int]?
    public   let popularity: Double?
    public   let releaseDate: String?
    public  let video: Bool?
    public   let voteAverage: Double?
    public    let voteCount: Int
    public    let name, originalName, firstAirDate: String?
    public   let originCountry: [String]?

    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case id, title
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview
        case posterPath = "poster_path"
        case mediaType = "media_type"
        case genreIDS = "genre_ids"
        case popularity
        case releaseDate = "release_date"
        case video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case name
        case originalName = "original_name"
        case firstAirDate = "first_air_date"
        case originCountry = "origin_country"
    }
}

public enum MediaType: String, Codable {
       case movie = "movie"
       case tv = "tv"
}

public enum OriginalLanguage: String, Codable {
        case en = "en"
        case hi = "hi"
       case ja = "ja"
}
