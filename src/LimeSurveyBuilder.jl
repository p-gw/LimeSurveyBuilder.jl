module LimeSurveyBuilder

using Base: @kwdef
using Base: prepend!
using Base: insert!
using Base: append!
import Base: write
using EzXML

export survey, question_group
export subquestion
export response_option, response_scale, point_scale
export short_text_question, long_text_question, huge_text_question, multiple_short_text_question
export single_choice_question, five_point_choice_question, dropdown_list_question, radio_list_question
export multiple_choice_question
export array_five_point_choice_question, array_ten_point_choice_question, array_question
export date_select, file_upload, gender_select, language_switch, numerical_input, multiple_numerical_input
export id, children, code, question
export xml
export type

# global settings
export set_default_language!, default_language

# abstractsurveycomponents
export id
export languages
export title
export relevance
export type
export help
export description

# language settings
export language_setting

# response options
export response_option
export response_scale
export is_default

# subquestions
export subquestion

# question
export is_mandatory
export has_other
export has_subquestions
export has_response_options

export short_text_question
export long_text_question
export huge_text_question
export multiple_short_text_question

# xml
export xml


const DEFAULT_LANGUAGE = Ref("en")

function set_default_language!(lang::String)
    @info "LimeSurvey default language set to '$(lang)'."
    DEFAULT_LANGUAGE[] = lang
    return nothing
end

default_language() = DEFAULT_LANGUAGE[]

include("survey_component.jl")
include("language_settings.jl")
include("response_scale.jl")
include("subquestion.jl")
include("question.jl")
include("question_group.jl")
include("survey.jl")
include("xml.jl")

include("utils.jl")

end
