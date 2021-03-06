module SyoboiCalendar
  module Resources
    class TitleResource < BaseResource
      # @note
      #    0: その他
      #    1: アニメ
      #    2: ラジオ
      #    3: テレビ
      #    4: 特撮
      #    5: アニメ関連
      #    6: メモ
      #    7: OVA
      #    8: 映画
      #   10: アニメ(終了/再放送)
      # @return [Integer, nil]
      def category_id
        if source["Cat"]
          source["Cat"].to_i
        end
      end

      # @return [Array<SyoboiCalendar::Personality>]
      def casts
        if comment
          comment.casts
        else
          []
        end
      end

      # @return [SyoboiCalendar::Comment, nil]
      def comment
        if source["Comment"]
          ::SyoboiCalendar::Comment.new(source["Comment"])
        end
      end

      # @return [String, nil]
      def english_name
        source["TitleEN"]
      end

      # @return [String, nil]
      def first_channel
        source["FirstCh"]
      end

      # @return [Integer, nil]
      def first_end_month
        if source["FirstEndMonth"]
          source["FirstEndMonth"].to_i
        end
      end

      # @return [Integer, nil]
      def first_end_year
        if source["FirstEndYear"]
          source["FirstEndYear"].to_i
        end
      end

      # @return [Integer, nil]
      def first_month
        if source["FirstMonth"]
          source["FirstMonth"].to_i
        end
      end

      # @return [Integer, nil]
      def first_year
        if source["FirstYear"]
          source["FirstYear"].to_i
        end
      end

      # @return [Integer, nil]
      def flag
        if source["TitleFlag"]
          source["TitleFlag"].to_i
        end
      end

      # @return [Integer, nil]
      def id
        if source["TID"]
          source["TID"].to_i
        end
      end

      # @return [String, nil]
      def kana
        source["TitleYomi"]
      end

      # @return [String, nil]
      def keywords
        source["Keywords"]
      end

      # @return [String, nil]
      def name
        source["Title"]
      end

    # @return [Array<SyoboiCalendar::Song>]
      def songs_ending
        if comment
          comment.songs_ending
        else
          []
        end
      end

    # @return [Array<SyoboiCalendar::Song>]
      def songs_inserted
        if comment
          comment.songs_inserted
        else
          []
        end
      end

    # @return [Array<SyoboiCalendar::Song>]
      def songs_opening
        if comment
          comment.songs_opening
        else
          []
        end
      end

    # @return [Array<SyoboiCalendar::Song>]
      def songs_theme
        if comment
          comment.songs_theme
        else
          []
        end
      end

      # @return [String, nil]
      def short_title
        source["ShortTitle"]
      end

      # @return [Array<SyoboiCalendar::Personality>]
      def staffs
        if comment
          comment.staffs
        else
          []
        end
      end

      # @return [String, nil]
      def sub_titles
        source["SubTitles"]
      end

      # @return [Integer, nil]
      def user_point
        if source["UserPoint"]
          source["UserPoint"].to_i
        end
      end

      # @return [Integer, nil]
      def user_point_rank
        if source["UserPointRank"]
          source["UserPointRank"].to_i
        end
      end
    end
  end
end
