public class Recommendation {

    private int recommendationId;
    private int userId;
    private String recommendedCourse;

    public Recommendation() {}

    public int getRecommendationId() {
        return recommendationId;
    }

    public void setRecommendationId(int recommendationId) {
        this.recommendationId = recommendationId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getRecommendedCourse() {
        return recommendedCourse;
    }

    public void setRecommendedCourse(String recommendedCourse) {
        this.recommendedCourse = recommendedCourse;
    }
}