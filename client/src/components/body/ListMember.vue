<template>
  <div class="row bootstrap snippets bootdeys">
    <div class="col-md-12 col-sm-12">
      <div class="comment-wrapper">
        <div class="clearfix"></div>
        <hr />
        <ul class="media-list">
          <member-item 
            v-for="member in members"
            :key="member.id"
            :member="member"
          />
        </ul>
      </div>
    </div>
  </div>
</template>
<script>
import MemberItem from "./components/MemberItem.vue";
export default {
  components: { MemberItem },
  name: "list-member",
  data() {
    return {
      members: [
        { id: 0, name: "Member 1", email: "nguyenvanmember1@gmail.com", avt: 'https://bootdey.com/img/Content/user_1.jpg' },
        { id: 1, name: "Member 2", email: "nguyenvanmember2@gmail.com", avt: 'https://bootdey.com/img/Content/user_2.jpg' },
        { id: 2, name: "Member 3", email: "nguyenvanmember3@gmail.com", avt: 'https://bootdey.com/img/Content/user_3.jpg' },

      ],
    };
  },
};
</script>
<style scoped></style>
