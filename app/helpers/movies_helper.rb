module MoviesHelper
    def highlight_sorted(attribute)
        if !session[:sort_by].nil?
            if session[:sort_by].include? attribute
                if session[:sort_by].include? 'DESC'
                    return "highlight_descending"
                else
                    return "highlight_ascending"
                end
            else
                return ""
            end
        end
    end

    def mark_sorted(attribute)
        if !session[:sort_by].nil?
            if session[:sort_by].include? attribute
                if session[:sort_by].include? 'DESC'
                    return "▼"
                else
                    return "▲"
                end
            end
        end
    end
end
