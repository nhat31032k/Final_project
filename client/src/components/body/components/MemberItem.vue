<template>
  <li class="media" style="margin: 20px 5px">
    <a style="margin-right: 20px; padding: 5x" class="pull-left">
      <img
        :src="member.avt"
        alt=""
        class="img-circle"
      />
    </a>
    <div class="media-body" style="padding: 15px">
      <strong class="text-success">{{ member.name }}</strong>
      <p>
        Email: {{ member.email }}
      </p>
    </div>
    <div style="padding: 15px;">
      <button
        class="btn btn-primary btn-sm rounded-0"
        type="button"
        data-toggle="tooltip"
        data-placement="top"
        title="Edit member"
        @click="$router.push(`/edit-member/${member.id}`)"
      >
        <i class="fa fa-edit"></i>
      </button>
      <button
        class="btn btn-danger btn-sm rounded-0"
        type="button"
        data-toggle="tooltip"
        data-placement="top"
        title="Delete Member"
      >
        <i class="fa fa-trash"></i>
      </button>
    </div>
  </li>
</template>
<script>
export default {
    name: 'member-item',
    props: {
        member: {
            type: Object
        }
    }
};
</script>
<style scoped>
button {
  margin: 5px 10px;
}
</style>
